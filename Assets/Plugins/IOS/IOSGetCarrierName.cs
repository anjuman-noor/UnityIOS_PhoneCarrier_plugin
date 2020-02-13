/// <summary>
/// @author: Anjuman Noor 
/// @email: noor.anjuman@gmail.com
/// </summary>
using System.Runtime.InteropServices;
using UnityEngine;

public class IOSGetCarrierName : MonoBehaviour
{
    // Start is called before the first frame update
    #if UNITY_IOS
    [DllImport("__Internal")]
    private static extern string _GetCarrierName();

    public static string GetCarrierName() => _GetCarrierName();

    #endif

   
}

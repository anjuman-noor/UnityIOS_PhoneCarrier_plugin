using UnityEngine;

public class UIScript : MonoBehaviour {

	// Use this for initialization
	void Start () => Debug.Log("Carrier name: "+IOSGetCarrierName.GetCarrierName());
	
	// Update is called once per frame
	
}

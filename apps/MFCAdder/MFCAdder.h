
// MFCAdder.h : main header file for the MFCAdder application
//
#pragma once

#ifndef __AFXWIN_H__
	#error "include 'stdafx.h' before including this file for PCH"
#endif

#include "resource.h"       // main symbols


// CMFCAdderApp:
// See MFCAdder.cpp for the implementation of this class
//

class CMFCAdderApp : public CWinApp
{
public:
	CMFCAdderApp();


// Overrides
public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();

// Implementation

public:
	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
};

extern CMFCAdderApp theApp;

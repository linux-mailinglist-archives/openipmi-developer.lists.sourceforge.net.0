Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E653A0AF7F
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jan 2025 07:54:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXEKt-0003xE-VW;
	Mon, 13 Jan 2025 06:54:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tXEKs-0003wy-TG
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 06:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a7RSSD1Kq3bypSDbKmErrbixye0ltFBI1+34Dd+kUvo=; b=Z6fHzsJHT9FgWMOjISDJ9v+0wj
 /4UPh8ySjpvbh80ln4YrOfPSL93yu7aID2/mo737WZDvv0+tSKYyNTBKGU2/xkQzBD+lEaWi6O0mX
 uJvEzQ8D2G/hY6ztZcpVBEfwzn3RxM8Z1bl3xb4bukCFgRNg+5Win5FYpNTVQrUMGAgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a7RSSD1Kq3bypSDbKmErrbixye0ltFBI1+34Dd+kUvo=; b=kutP4f4mhovAmm1yutYqickgxR
 pSWHD29iL0JWSOK335rzpHR8jZ2WQzkSsK4+FtU6ZIFG1V3udFBtPj69btoYM/iIhFGlBBcoTFM2m
 R2rcz2Q7a8DsZgbAd+BDwuNTe2XX/Pq4MUuR6Bh7C08CMPh4vq6uQ+UHLCOUCUcV1DAQ=;
Received: from mail-eastasiaazon11021137.outbound.protection.outlook.com
 ([52.101.129.137] helo=HK3PR03CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXEKs-0006Sg-18 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 06:54:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xUIiF6LZcao+0znAUjlxoWkoELcDgBPT0RqnEw7cRLBVKLwRID27TUO9dclj5LkLbaV6timMjrriNDj8+7EoOOzY0RkC9aU3AKGAQhNOd0q3ZhVylLFUuR/VQC0AQ26WMOzfN68rRrwTrht+yFASnLQjoXtpHxxvqUQgrZe43PNf/xdguatf1+fy34P0ieBZFTYWA1TUIQsXnBR8mZJLIqays4evhJw1TJZHgtla6He0eC1FIxl7O3/aAPjmyuCD8EiTc+GPyrR2+u6I1U/WuGMHV79lP0BHuDUKq0qU8Bk2JmD8thRd4/cd6ykatMJLd/8QBekqPTvRayBULn64fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a7RSSD1Kq3bypSDbKmErrbixye0ltFBI1+34Dd+kUvo=;
 b=D/cFk83kNXeO8WiQrhlDVlRK9I8fl1kP37ZIhoF+j3lmLh+2wOSZzCtl5MX/u8Q6j0Ky8LVmm6Fsw7YOin9wiYVD+So/YnmKAw9y579iuiUCi2x0Q1fWagPEyaL66CjEUFOKppuYpXCihJtCQEee+NVPhBnwuE/XojTOy1SU6KcqNs6U8DcJdlzfaDaiCbxqXWlhCOphMVg8IZy3yaUh9j0K+kk0iY2puX9JhV5QIVYFo/H5wd7F7pMluoeDpLUl3qLv/Q57WZGvM/gS78C9jWqr8wEwdvp6hxnXWD2xEirtFDfgj6VezrNx07Byov7A2wQg32WGeW9zZdU8PANvCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a7RSSD1Kq3bypSDbKmErrbixye0ltFBI1+34Dd+kUvo=;
 b=K26emCiPMFB1GhBJsSRMTAdyWXiKX5jkuc6pfLUrlTokaTy36t+bQvUS3quWpXjPqNfzACnQxIUPHDJvP4slCkPbISzO1Baj9+qWlhQvRXOpbRg368byyDHTFCvUYtOuLxi8g7fXCs9rXe1uEC6baFJF0p2AY/IdElz2h8X2OkKPJbfPL/jiWfE1XtccvjVCwCm0QokX+jIDgwuYQMXpuy7KOB2ybLduv967iihBXFRDg2WGXh6dMKZBmBm43DOp/O2JytiRojQuzdhOStAfbn6buo2UEAPDdsZSJGdD/QCuOttUU6/u2GO2wnMf8LWnhR70ahM13DlxOXqXs5ku+Q==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by TY0PR06MB5377.apcprd06.prod.outlook.com (2603:1096:400:214::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.6; Mon, 13 Jan
 2025 06:18:43 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.8356.009; Mon, 13 Jan 2025
 06:18:43 +0000
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: =?big5?B?pl7C0Dogpl7C0DogW1BBVENIIHYyIDA1LzEwXSBBUk06IGR0czogYXNwZWVkOiBz?=
 =?big5?Q?ystem1:_Add_RGMII_support?=
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z27MNKUAAgABN4QCAAApFgIAAvO3AgAAxcoCAABHnAIAAB/+AgAEsnXCAAFfBAIAEMh1Q
Date: Mon, 13 Jan 2025 06:18:42 +0000
Message-ID: <SEYPR06MB5134D71B324B6A0094ED45419D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
In-Reply-To: <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|TY0PR06MB5377:EE_
x-ms-office365-filtering-correlation-id: b7cbb5ad-5de8-4b6f-48fb-08dd339a211a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?TE8vQ2o4eDdtUTVtRlY4UnlJbzYzN3NDdDhlb1dkbTRsdmRTWExzeExNcjNkajgz?=
 =?big5?B?SC83UTNLZEdCdUZYV0VUOHdtQWpVS2FDTzdCTzJLbG9GQnZVRVZCVVpMR0RHTUFR?=
 =?big5?B?b09WYnBDTmw5WGpiNWxOby93L2N0UzZqUFVTMnU0Y05xQzVzMlp4VTg0Q0Q3eWRk?=
 =?big5?B?RTM5VHczdkt0aU1JWnlnNnpwRmZ6TWNrcElqWnFHQk1LcmE2SmU3Tk02WU9OTXph?=
 =?big5?B?WXlZNjRWN3FmWFZzU1VMa05SRWtUUmtYNkppNGxRMW8rODI3WHlSQndxVzB4dGhZ?=
 =?big5?B?NTB6OWtCN1JYSDlCcEkzcG5XY1dUU05JNWRIMmM3dDh5N1B6cHliOXJ1Mzh1UXZB?=
 =?big5?B?VDZJcmt4cVJwdXpud1ByT3paenNyTlFNaGlFeXlPM2daYXMyZElkejF5b0tQT2xF?=
 =?big5?B?MkxFQjBoenBGTGtLYkhqTzlMYWRRWUo1RlVnREt0b3N2eVh6aFhuS1Q4SGVTOUNL?=
 =?big5?B?WkxQK2cwOXVoZjFwTXgxWDZwMWRqcUpQak8yT2h0Q2VrUERaWWFPYURaRWdCZytQ?=
 =?big5?B?aTJNckdMeFREOU91KzNPdGRDSzJaaVVuQWJvaE85L3FkVDVVbXJSc0FGaWtpREN1?=
 =?big5?B?RTc1V3ZQUDNTL1ovRzdGa1F2YzBmSkVWNHZhWHJjMXUvMUN3UG9rQWlxZHp0Yysx?=
 =?big5?B?OFEraWpBSEpnTEo0ZWg4U0ZlYzNPSXdUelByVkNpaGI2ck1kTVpneDBQRHJuelJH?=
 =?big5?B?Zk5LUDBCYTVNVWVtU3ZjQWdFNDFhZmZqSVU5WDBkcDl2K0p5UXJuZzQrY0gzek8r?=
 =?big5?B?OTRPdnFWT2xuVUVSbGlFYjJSU1YyNW9QdTFpcmRnNEhqQmNzSUUwMHowR0h3MHFP?=
 =?big5?B?bVFRdU00ek9HNnR2T3hKeHlBN21ucnZqRnNIV1A4Zk4vK2lPZmdKVWhOeVhBcHBG?=
 =?big5?B?Vk1HUlFWV1U0YTJ2YjQrR25rY0Qwd1JkN1VWR0lrOHdrd2Q5TXdScmMyalBrMUwy?=
 =?big5?B?eUdUaUc2cDlzWXBZUmJKQ2VwUTNxeTBZd1E0VDFjVG94bHplV1ZBSThoWjJJWmRk?=
 =?big5?B?VTVJTWxkK3RSdnFVeDRvWVpmOUZxcWh5TGczWnFkMmVjR0o5eXduYjV3b1E5Z212?=
 =?big5?B?eDhZN3JFU1BnRVlCRnl6ZnU3TU5qbzg0OWErWFpNU1JYaVlWTHpyVHN5QkZWVHJ1?=
 =?big5?B?VVFkUmV5NC9mcHRCc3Y5QmthbS92ZDdIVDBVNTJhUHM1VjJVWElhSEsxNXlpNG1K?=
 =?big5?B?U2J2bm1FNjJXVmZpY2g0Z2VNQ25HOGUxZzByK2w3MnlSTVNHakNXb25WUU9zcTdI?=
 =?big5?B?UU5vcUhMWDdHZituNTFYeU16QkcxVTFYeFo5d3JZVWtOSmNHR0J2SlVYSldmRjZj?=
 =?big5?B?L1VMdVFwU3JseGFzVW5pK1RSM1FkYmE3QlhSUGdEQ09GNGtBL0tHUEFEVFY0Y2Z3?=
 =?big5?B?SERSY09rNTB4d1phZ3Z1d2NxS002ZFQ1aUdPNFQ5djBhNkcveWhHTEZROUFic3JJ?=
 =?big5?B?YmpZK3YyYVE1MFM3TjBZbE9TSjhjRWx3T3hiRVFGaXhCb214d1diZytRMTlPZC9i?=
 =?big5?B?WG5pQmV1Y0tFREhJMjdaMG5jdVMrVmpvelludmtTTEhvVHVRV3F0UWdXY2JSdW5J?=
 =?big5?B?RDBZWXJJNTkrZHI4TXBTNHpCMEVqai80ZVd6WEJPVjRVYnkreVRYYWZlUVhhSUlP?=
 =?big5?B?VisrQ0kwSkxvd2NKa1A2WkF5Ylhsb1BZZEVkRVk4OGYvQkwvbys4OFU5WkdZZU9j?=
 =?big5?B?UEpWR0tNSnMvaXNqblhIQjIwb1NNckxPc0dsVHRyaGwzSy9kWDE5ZVh0OTYya3BW?=
 =?big5?B?SS9kRHF2RS84R3FwWGVHWWEraHNKanBqY3VlQmhvbmJPZnRZNFpLSkhVa01rckZE?=
 =?big5?Q?jJpf9fNvJt2FYDxVLz5s9lkprtDUf0N/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?ZXl5aDZ6UlVyTmZWWjFuU2xsVFcwdW1rbU9CVmJrME5tNmJJc1c1OGxyMmxvT0lN?=
 =?big5?B?NjJaTnJNY05FblM3WjRNdFBrUlRjNmtyYW80WU55T3R2SmZGUE1vcnBZS0pCaG1U?=
 =?big5?B?THRUb1IzRkFFaUErTmtGbXczcG4rRGpKdzhOZE5TenJ5bnpoL1pvczFDLzVUTllG?=
 =?big5?B?ci9iUlJhZnJIcnBJMy84VU93U3lnMnhsYXcxeGJpaWozUytlRDlyWmgrNVZwSVpw?=
 =?big5?B?ZmgwUkNCRFhkTnN4UHhYcDd5MG9CcS9SN3VFRGNZK1BEWDNiaTRFQU9XemdRV3NL?=
 =?big5?B?SmVRMWh0YUV6QVhvQzcvU0hxV3FXRXhtVWQvVkdGSDJDSStNdHlRd0haR3c4YXZQ?=
 =?big5?B?dmNxdnVEdXd4ZkhGVmVMTWhBc1dCVWZ3UTNtOWFZV084SjdFWkQzT0w2ZFdLL3JO?=
 =?big5?B?NFdEczJOU0k4QVoyb09uTXg0QmpkdjZIL1NMaXNKZFhiMlRwWWROWXdSL2lLSGND?=
 =?big5?B?dXE1NmlnaFJyMzVCV2NiK1F4OXlqTEk1Z09QTG9ldmVWZFdJMENtSUx2NUJoelNZ?=
 =?big5?B?TVRqckswK3REbEpvdTk4ZUpaMWsvMDVJSjlCU050czZQOEl4a0VxUFF3b1ZwRVN4?=
 =?big5?B?bUJ4cUxaODMwVGlYUUE3TytNVXFjR2psdFRIWi9zTmluRWxrM0xxLzhTQ2VURnJ0?=
 =?big5?B?SndJY0pETVByZDFEc1Y1NjFxWi8rZEREeitZTmxBYTlEVFpJVTlzcDRKa2xSbGFW?=
 =?big5?B?WjFjNXFsNmhFQjZwUkJyOUtqWG5PTENTdTFCVld6OFdZc1JnaEpCZ0JmRzFZNjFh?=
 =?big5?B?TjFRVHRFaEIrZjdpbFVYS2N5bXN0ZmVIQTFVWllCQkE1SWpQUUY0TmZUYzZ4aUkw?=
 =?big5?B?OHV5QWhtdGZLT0RLakZpNngzVjhjbStLZzhNeHJFOGpKak15MjVxZFRGQXkyTXlN?=
 =?big5?B?NDQvclVZY1NMeHc1MnJMRXY5NTVFTWVmZ3hxMjByUUxoSzRkZCt2aHIwMC9qZlIy?=
 =?big5?B?cFlQQWVTOENmWWpWRkl4Q1Z6eUZRMzFDL0s3cEErMEZFM0grTnJscVc2dTVOclY1?=
 =?big5?B?VWJIdlR0UDlGNEVkM3JqcEhaVnh4NmhhR1dTMHUwWFk3Yy9MQ2djeThFWEVjcEJN?=
 =?big5?B?OVlaa2dLSmI2Yk5JOHJ4WVRTSU1TblpEYUNEWUlPQUZxRjFSN2JzZHFDYSs0MFAr?=
 =?big5?B?bjdlYjVQcDRjcElwOXQ4a2xjTzByMXJOQTRPdCtNTzVWQW5DSjZGczI3MEFLNEZY?=
 =?big5?B?dGt0SnRzbU5WdGx6NUFLeHF1NUpiTzJheXZHN3p2Uk1sU2wrYUZnZFVvZjUybWVi?=
 =?big5?B?eXJ0MzRMR2h5aXhnYU5ocUwycmo4dElza1U1NTB3K0hEMUpVTnBuYnBkU2Z4S3VY?=
 =?big5?B?aFRRelJIK3ZRaUo5QkxzbW1vQTBMeDAxcElhVXF0SmQ4aG5qQU9YVkFhd0M0MjY0?=
 =?big5?B?MUN2dDlFMTVCU2JWMmpDNVNkTDlQcXh4Z1VNNGI3QTZuSWN1cEdHeituUE5uQkRy?=
 =?big5?B?bEtHQ2lGRGRRZEpYdFZzNWJwekEvRldYSFNMdVpJekFzTVI0YTB2Mk1ub3kxbEpW?=
 =?big5?B?N08yZndDRVpCekI5YjNXUjJSY0IzNGI5YTVsc1AzNmhqNlhIZG9VOStVOXAzMlhG?=
 =?big5?B?anB3WjB3cFlURVZ2Ylg5ZWQ3YWQ1NTZGWDE0cDdEbUVyR2J4R01VdEorRnBRSHVF?=
 =?big5?B?WTY5Z0xPOXQ3RngxTDYvQklpRlkrRGVvRHV6UnFaVUFRNDhPMzV2YVg4QmtzemVZ?=
 =?big5?B?NDVPaHZMNXZRRjFGRENLRUNld1laUGhjY0hHb1IvN3IxVDgyTVVobUtZSFcyRitV?=
 =?big5?B?K1hzb1JISkc0Mm4vSWRFZHRERTFFTlYwaTVDcG1JMjlMYUM0WkZnU3RCRUIxcjdh?=
 =?big5?B?Rk5KTUpKbDRDMTZ4OFBrSTZSMmdJS0g1ckU1Z0E4bUVSZTJyYjRhK2NMMHBjY2pV?=
 =?big5?B?M2hsS2I1S2twaHhWTXd2Njl0VFREVTVBYzFCY3U2cUlCK0FvVmZTQ2Q5OG4yTHov?=
 =?big5?B?TmxWSFpqMHdxbWRpWkc3cVVkQ0oyVzM5SzJOZnBDZkhUS0M3S3ZyNWpZNmNKQmlH?=
 =?big5?Q?p+xtdjcAc/fCJazB?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7cbb5ad-5de8-4b6f-48fb-08dd339a211a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 06:18:42.9229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KrRS+H61o31cuBbaTe7HBjeR0/BjjjSwAyRuuQZCePeBNe87jnQWF4X0XMhpdPlC7HVAc+yl+p28fvlbf8H77Dk6zh9PKFsd7yby1A2EpXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5377
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Andrew Thank you for your reply. > > Agree. You are right.
 This part is used to create a gated clock. > > We will configure these RGMII
 delay in bootloader like U-boot. > > Therefore, here does not configure delay
 again. > > > Becaus [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.101.129.137 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.101.129.137 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.129.137 listed in list.dnswl.org]
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.129.137 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tXEKs-0006Sg-18
Subject: [Openipmi-developer] =?big5?b?pl7C0Dogpl7C0Dogpl7C0DogW1BBVENI?=
 =?big5?b?IHYyIDA1LzEwXSBBUk06IGR0czogYXNwZWVkOiBzeXN0ZW0xOiBBZGQgUkdNSUkg?=
 =?big5?b?c3VwcG9ydA==?=
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Jacky Chou via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ninad Palsule <ninad@linux.ibm.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Andrew

Thank you for your reply.

> > Agree. You are right. This part is used to create a gated clock.
> > We will configure these RGMII delay in bootloader like U-boot.
> > Therefore, here does not configure delay again.
> 
> > Because AST2600 MAC1/2 RGMII delay setting in scu region is combined
> > to one 32-bit register,
> > MAC3/4 is also. I will also use 'aliase' to get MAC index to set delay in scu.
> >
> > // aspeed-g6.dtsi
> > aliases {
> > 		..........
> > 		mac0 = &mac0;
> > 		mac1 = &mac1;
> > 		mac2 = &mac2;
> > 		mac4 = &mac3;
> > 	};
> 
> I would avoid that, because they are under control of the DT developer. You
> sometimes seen the order changed in the hope of changing the interface
> names, rather than use a udev script, or systemd naming scheme.
> 
> The physical address of each interface is well known and fixed? Are they the
> same for all ASTxxxx devices? I would hard code them into the driver to
> identify the instance.

The physical address of each interface is all different in all aspeed device.
And they are fixed and known. I can use the address to distinguish the interface.

> 
> But first we need to fix what is broken with the existing DT phy-modes etc.
> 
> What is the reset default of these SCU registers? 0? So we can tell if the
> bootloader has modified it and inserted a delay?
> 
> What i think you need to do is during probe of the MAC driver, compare
> phy-mode and how the delays are configured in hardware. If the delays in
> hardware are 0, assume phy-mode is correct and use it. If the delays are not 0,
> compare them with phy-mode. If the delays and phy-mode agree, use them. If
> they disagree, assume phy-mode is wrong, issue a dev_warn() that the DT blob
> is out of date, and modify phy-mode to match the delays in the hardware,
> including a good explanation of what is going on in the commit message to
> help those with out of tree DT files. And then patch all the in tree DT files to
> use the correct phy-mode.

Agree. I think this method is good. The RGMII delay reset value in SCU is zero.
I can use the reset value to know if the RGMII delay is configured.
If the values are not match the phy-mode, print warning message and apply the 
RGMII delay property if there is in MAC node of dts.

> 
> Please double check my logic, just to make sure it is correct. If i have it correct,
> it should be backwards compatible. The one feature you loose out on is when
> the bootloader sets the wrong delays and you want phy-mode to actually
> override it.
> 
> When AST2700 comes along, you can skip all this, get it right from the start
> and not need this workaround.

Thanks for your friendly reminder.

Thanks,
Jacky

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

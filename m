Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E77F2A166D7
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Jan 2025 08:00:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tZlll-00008z-Cg;
	Mon, 20 Jan 2025 07:00:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jacky_chou@aspeedtech.com>) id 1tZllj-00008p-2T
 for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Jan 2025 07:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UnfK/4+Z2e/eD3cT7ENU2d/f6IDImEgfx6YwBH4mNZg=; b=BqtDh8/SvpbDh5utc1RjXRmQkW
 WbirqT+/0f7puw3jscc6b8pNmve6XvIVpTcrzVKyS7mi7s/QJWNnGOuBsmdI+aJcnkBdTcqqClujw
 1L/M1yBnswjplodT15j3Ucvp/sXQUyoqRuso8cScOGGsa1UhJhophdtS6C6wip/MVMD8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UnfK/4+Z2e/eD3cT7ENU2d/f6IDImEgfx6YwBH4mNZg=; b=WrbvPa7JLyACWn41eXWTlS6OWu
 3caq8vPc9Dz1AH3cfdpH/eH9VYO+35jXb0RFWAvVJXeJX/sCyBKEdyplqUzyujxWXjG7VJt3tu4y0
 2FZqZmswQAODiUawZj0aqWIyVlk3rBRcJzCL34pZCe2+vVk5O/jc9LMKcLyj+n/hIXeo=;
Received: from mail-tyzapc01on2090.outbound.protection.outlook.com
 ([40.107.117.90] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tZllh-0003wk-4H for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Jan 2025 07:00:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UXkCNS9lcuUVfOWn9ZWPvOM/2X7kdT6Hlu84Z8sNN12pdsDlHEWM6HMdnOy1kEkd8uMdXOEz4ho6wz9nxT1YC03jRJeLrbOt7gvgb+bsCR1mcWNOaRP/j6SlgBxKSy8e7g8d24ZnDHtOlSYcEaaESOIIeQrifGDXiJENZnTzRJxXJ+EdrZTL4DMkNn9y5ZU+lE41LFa2Oji+r82J6a7jjpRGl87YPBifao7/kRQ53RQ1eWmqzlmRBiOhWmsqjOp3CaW6o1YC26IKd5zBXCIKVMuahqn4uVKNcgHD7ENQQb01Ehuqu0gwq6CBTCjAXR4HiL8X3Z+y1wMbhen0TeI8wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UnfK/4+Z2e/eD3cT7ENU2d/f6IDImEgfx6YwBH4mNZg=;
 b=w3QN6rRj3SU9lA43BVnmYlrnaguixPz/L8luNzHg6XnrPFwDD0jLc+cUz0o9h9jOzsF6IYKKm2cHNQhj8+Mg1fabyLY/3srqEgvqjXfpUzt1fc36K+2Vy/4ajjldnU7YMvUem2xpjTiaEsCR4z8+bZwWKR4qyOu72pJ3A3IzbN8jHwkvDJgjOjCsf1CAnd5gzf6v2qo99E5AExcnVX/cmpZquivqemkyW/cliHlKWY42LOe9jI0+kmb4FK4wW8MwXwxrStdP7tuR5F6ngf0HPdlU3ducBEpnmVM3CIj5DOylWs+FmxYPo64Mi18PXz9iPuCyqt5iMPhRByjl16Uxjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UnfK/4+Z2e/eD3cT7ENU2d/f6IDImEgfx6YwBH4mNZg=;
 b=gqg4t7jE5+vav+Qp6niEdaTOn5FWwJVGd4wVYQwcMih6POEzHDf8BneCo+ZpHdK/fYeojkwgEQPDipq2Xu4sDyp3BRUWA9KrksN50pJbpeTBtPw8JNBoTXDMAiY90L0cjPXr+q4QzMLy8tJjx3oj6sQG1oDCRj7DmD1IzMyJ+gS5+LaYbET4t1lErFks680LvBvkASGea5uZXeBfuG05cGO41s0V1tA8o+Zf+A1ngZL4hfgIMOVFAvKP74ZOk3ZBD56VY+QTsYjarmrLxr97xgvd/9R9V0+/LPWqkS7dEqKJEEIG4uaU9yBj9NoQ4eyiLwx37fbMOcvskVLG6Rz/qA==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by SEYPR06MB5229.apcprd06.prod.outlook.com (2603:1096:101:88::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Mon, 20 Jan
 2025 06:59:59 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%6]) with mapi id 15.20.8377.004; Mon, 20 Jan 2025
 06:59:59 +0000
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: =?big5?B?pl7C0Dogpl7C0Dogpl7C0Dogpl7C0Dogpl7C0DogW1BBVENIIHYyIDA1LzEwXSBB?=
 =?big5?Q?RM:_dts:_aspeed:_system1:_Add_RGMII_support?=
Thread-Index: AQHbYX4ZqwUnoFUOykuCVX4SkD1z27MNKUAAgABN4QCAAApFgIAAvO3AgAAxcoCAABHnAIAAB/+AgAEsnXCAAFgBAIAENTRQgACHsgCAAAOEgIACXbCwgAAFSQCAAAD+YIAArYUAgAdtdVA=
Date: Mon, 20 Jan 2025 06:59:59 +0000
Message-ID: <SEYPR06MB51347BB3F94A09B89BD313269DE72@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <d80f5916-4918-4849-bf4e-2ef608ece09d@linux.ibm.com>
 <SEYPR06MB51340579A53502150F67ADEC9D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <bcebe5ed-6080-4642-b6a5-5007d97fac71@linux.ibm.com>
 <26dec4b7-0c6d-4e8e-9df6-d644191e767f@lunn.ch>
 <SEYPR06MB5134DD6F514225EA8607DC979D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <e5178acd-0b6f-4580-9892-0cca48b6898a@lunn.ch>
 <SEYPR06MB513402FD4735C602C5531F499D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <f28736b5-f4e4-488e-8c9b-55afc7316c5e@lunn.ch>
In-Reply-To: <f28736b5-f4e4-488e-8c9b-55afc7316c5e@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|SEYPR06MB5229:EE_
x-ms-office365-filtering-correlation-id: 8ae2e6a9-2629-4aaa-42e9-08dd39200dea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?big5?B?M3BYQ0dtU0FJOTBxbnFiQ0ljMUZwTnUzUmNqOUQ0WVc1Q25mVXlKb2FaOTBONzZz?=
 =?big5?B?NGQydmg2OHgxTEFXK0I3cERkaUVVUlAxakZJWFJGanVWTUt6aXBSZitvVHFsOGE5?=
 =?big5?B?enF4OEZWb2RxUkFUa2xvbnZjbmdWMFovak1RUVRnWk5PSjJ0R2MybEJOSG9HMEhh?=
 =?big5?B?RlIrVm8zSzc2dkVRZUtidmpUYTAzODFKRW5XOE1wdGRJNDlOZmM4b3VrcnBycG96?=
 =?big5?B?dm1yWUJpR0hjTERaMElVdGhGWWREY0Y2OFZsckFuNW5LcWx2VUpyNVV2Qk1wOTRL?=
 =?big5?B?WFJCNG54bDltUjBzOEFmWjhtL1lPWTNQQmhUREhIa1U2WHdCb0N6YlZzNDNUUlFl?=
 =?big5?B?aFpSeCtVWEpFQmhZaW1RdW84M3UwRFhUU2EwTUVRTkFDanNOQkI4VlQ4TkNDcnVq?=
 =?big5?B?MmRYaGVhNjRWRlBGYXBYMlRxVGFjbS9Wb0pjTy9yYTlKV1JUeXJSd2ZKVlFVNTNo?=
 =?big5?B?NnJBMGx3SUpFVHg1MDFLVTdwRDY4eEVSMHprVE5KWmUrTE9xY04wSkFkZ0dFTWxM?=
 =?big5?B?dEVuNFVzNFdIMlYraXNwZkpCS1UwbS9ybGdkVzh4TjBBV1VHdTV1UFVFSGNnMTcr?=
 =?big5?B?VUtVVUNPOGc3bnhsTTlFUjlNenFnMHZxQ2YxMDNITkVBLzJQdlZQRlRYbnhZVU9C?=
 =?big5?B?c2w0K0dGUUs5dDBoaHJtakxYT2hpRUd2UStTMElrU0RzV1N6RE0zOUhIR1BNdEwy?=
 =?big5?B?M2FkRXZVc29teWd3UFIvZldJOEFCMTdpdUtkR040djNKd2orNkhsZXc4NjBVVVln?=
 =?big5?B?enZFY1VuVm5aSGhERTQ5MUhJdG5zcGFaUmtjeFN2UzVFM2xMRFo0U2NMQndXMGhU?=
 =?big5?B?N01pN2poMHFMdHJTdEJibTB6MUM1NmxjVi9BT0owR2Nhb0xhUEdBOE1xUElPK1N0?=
 =?big5?B?a2k0enlpK2UvUUlGeStueDFvY2lxSVNYZFUwdFVhOW1mVVlDMGxNTnhLMi9DaXlW?=
 =?big5?B?RGNFSVdRYUV4a2t6UTBrNlJVam5aekY3VEJrTEIyTlJuYlBhVERVU3BDTDZWZWp4?=
 =?big5?B?dWo0YS9ibG5xYUR2V2FhNElJUGJuMWJjbm1ORk9kSllRMURydkpqanVXQnZ2L3Mv?=
 =?big5?B?R1NycEE1N0hIVGJnNm94SGVUZkZyejZMUXB1Q0htb1Q2cUZJamhkSlAvK0NpU0pM?=
 =?big5?B?NXhEZDJmU3lZb3oySmdEZUZ3a1hPM3BJZDYvLzRpcHcvbWs4TVArNndCMm1ncXF3?=
 =?big5?B?Qm12REhTQjJJeFRqYXZIcENQZE9GWEJ2Y041QmNLUUlPcXhieTdCVVR5M3NLZWZK?=
 =?big5?B?M045RVV5ZkdqNW0wZ0NxN09XZE4yQzRENXl3MlJWQk9XUTFIZHNDZldKQ1lDcDVJ?=
 =?big5?B?MVM5dTBBd01rcEkxeEoreHh0Q2V0ck13dEt0K2pqbjJlMUIxRWVjMzVLdUxETjNE?=
 =?big5?B?eHJuR3EwZXZSbHg5SmJKMkhSSHk4NmFlRlh1a2x1VlB3NlBOUnJqNWRlNDd0TDkv?=
 =?big5?B?VG1GeEdkSDNMV1lja0QzVnJ4V01nK2trYVlXVHJEWURQUjhWaFdnb3lhbEwzN3JZ?=
 =?big5?B?ZmdvSjF0RTVkN0JGUy9uOE9Ud3RKR1dOdkNQZDRJeng0RjJ1UzlxU0ZuQW5mY0VK?=
 =?big5?B?TzZVQmhhQ2Q5ZDlod090VUkvM3R2Tk5NR1pmSThwdC82RnpaSHpNWGZISCtHSXNX?=
 =?big5?B?Wk5qa3lmWFVEY0tOTUxHbHh2YkJUTWNFTDJiRGcrdVdCRDU5eDV3RGhwY25zMHdt?=
 =?big5?B?dmJwaUI3VGV2R0NKb2d2ZkV0OTNmeStFUkttVjZWOVBLODluWXY0enRKZ3RLSFRG?=
 =?big5?B?RERFc3dNdzZuSFpjWkJIbWVlSEU2VjJXWGRTU0wrWVY1TmtHUlVmZWh0Z1ZIOWEz?=
 =?big5?Q?cHQam6RkgvG4ltgPVRxCjhXP+3efH8Jp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SEYPR06MB5134.apcprd06.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?eHJIWTZYYmtXWHVTZ1gwcWMxNnA1Wm9nV0MrWTRkTFhUVElZTkF6Q3VXVkVFM3Az?=
 =?big5?B?S1dWZ1Bnais0NHpvcjZ1UWNxNmpPamtPcDVmeTgyZFFzdjZqT0ZMM2tQaXIwcndE?=
 =?big5?B?S3RVQ21XWnA4Tk5NeTFGS0hpS1p4SHkrUUtRMERWQTBoZkRjemtJeG5UaU5vZ08w?=
 =?big5?B?Zy9RQjM1MEY4SkxQbStWd2trVGYyZHZZdk96VVl1MWRCdE5DdXY4TFpxTU9nQ00x?=
 =?big5?B?Q0tpZnp0Z0FUSmVwQTNLMitINnJ1VnU1NlBleWwycmREcUgyOTF0dUhtbUlpVEZs?=
 =?big5?B?ZnBHaEZtYkJqZ0xSdFovQ1FmbnorejZJbjVYSU80TktzSGl1elZuVlpDZ3Q1ZTdq?=
 =?big5?B?OXdqTnpxbzA2aW1jdnM4dUhSa0RIUi90RmErZTNObS9kWkFGZVBLaVNmUzBxN29O?=
 =?big5?B?VWoyR1NKc3RIQjZYT0JJQkFSTHEvRzVrYy81eTNtSHhVcEMvTGRKNXlIWVlLdjdV?=
 =?big5?B?aS9hYWQwMXgybDdzclMwMXZPQzh2bGJVZllEbFRCL1hhdWlhQTgzMWlwQ1loTVdI?=
 =?big5?B?cGZMZDZmV1RQb0t1R3llS3pZRmtPM2RZcFViQ21zcmpIT2gvRDNlZzBPVHBHNzZJ?=
 =?big5?B?OTIzVXYrd2hJSXZXaVNJSnpmeHhDbEJtN0U2V1ZQUDZXTC8zMlVFNVYzTGYwSDBz?=
 =?big5?B?UW54K2pJU2dSVEZIdUhXZVQrOU53VTZtUkF3cWRMaGtmaURSbmRSUnNXM2RUd0lw?=
 =?big5?B?WGlKc3U1RjZvM0psclFKUGlLVWhTbEg2MVlhUlo3YXRlenhHbmpvVW9ndjNwSFRQ?=
 =?big5?B?cGJKMFBnQkdrdHZxNVpkd1E4dTYrcWpPSUg2cnNUMUZScGFJM21kSkMzMFdONE1M?=
 =?big5?B?YzU0RVF4b3k2cGZFNDdjV0NaNGhmZzFJbW4xaFNRQlZFU3cvczNtRWthOGtvTzJs?=
 =?big5?B?V0J4YWhLVENlWkdvS0FqWUovQzFnNW1wcVF2VW9iZUoxWklpU29EenZEQTg4Y2s2?=
 =?big5?B?bWJ2Um1XRTAvUDFsYW1BMWtJcFJmMUFGWkwzSVl0U2ZUbUR1UGxiN3crZ3I2MUtl?=
 =?big5?B?ZmhVck9hT3lwMTNsbzJGTnk0TWlKdnoxV0YyTXU3LzJ4dG9UNy82QnFRbm9ORDlI?=
 =?big5?B?VWpRakd2dGIrenhSQ3pBcENkN0Jlb0FDdTNHMnQ0a1F0SDdaSmdZTVdzQklIRUNK?=
 =?big5?B?Qld3ZU02NFdCUWxrVUFqZXRnQ2ZjM0MyV09KazFKSm9UWGlSZU41eXZibWpCbzFB?=
 =?big5?B?YzliRFFsSUh5cis0eW9CTk1mbFhHb0l1Wm55TlNoS3VnS1MvejVpVEdPbVIwdits?=
 =?big5?B?V2h0N0hqVXFIRWxHOUFrNmJPaFp0L3dpL1R4bXB3Rm1mNWlWS3ZPSnJRNWlOL0lN?=
 =?big5?B?NkxSQmZkdkl0Rm1GZzZrcXNZOHFaZU16T2ZPaHZnUUhEL2hycmoxSVV1YzVtRm1B?=
 =?big5?B?bkxpclE5VDNqSk5OaENsdTNnaUQwZHdWcm43OXpRU3FEckt5b2I1b3Z1cDJrdmxN?=
 =?big5?B?TFA4MFJVY1NzbFZYSnc4Y3ZkdVJiSVpORitjKzRTenBWbzBlZDF6Nm9PSFpXREQ4?=
 =?big5?B?ZFJpRmpmNDhVVytYK0hidVd4TnNmME9IQmptckRXRlRmOWFlR0xvbXBUL2J6Rzlz?=
 =?big5?B?eldoL09heGdsZ2tnYzdzc0VOejBJREo5bXJuMWxlMGhDU2EwYU9WOGdBWmFMaHhv?=
 =?big5?B?TDV1MmtnMUx2dnpwck9kUFIyUDAza2J0bmZiNE1OU3VwQi9SbzZoWS9uMzQ0WlZE?=
 =?big5?B?Z1dVSnI1aHFIeFYvMWs3ckF2TzZ0eS9lKzZXZDRaTGYvdHlWQXZ2d2Z5dUJGRkx1?=
 =?big5?B?UGJQYlFYZjFJUFFsUElzSjRmOGd4NnZza2g0dEJnckNBK1VpUVU5Y2VPSkpjSE5Z?=
 =?big5?B?TEliS1REZFJLNGR0RGxtUHdxNUYycmdTYXdVRTdPYzF6VlVmem1ySjN3WHZ3b3lZ?=
 =?big5?B?a2lvc3Vyb2FrdG5TZGtmSVgydlVET25Oakh0VEFxYmxUUUc3dzE0VXpoNk1pSkk2?=
 =?big5?B?bDk3R0VDVnFUM2tvd0UvSjJaL1p4T2NGYWRXTHZwQmV3dno4UlRZUGEvSXBqem1R?=
 =?big5?Q?ggxotnJhX5sAtCB4?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ae2e6a9-2629-4aaa-42e9-08dd39200dea
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2025 06:59:59.1199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuwVMqLIMxOKRZhF/ws+v3sPnJ3rjkqzolvMp87XbCm8UV0qDqsT58veGmXMMUZSdpRQSYGMtrVtR5XjYTyluXPs/1z2OK8qRJyEhYBpmdk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5229
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Andrew Thank you for your reply. > > > > Yes. I have read
 these mails. > > > > I understand what you mean. > > "rgmii": delay on PCB,
 not MAC or PHY. > > "rgmii-id": delay on MAC or PHY, not PCB. > > > > ftgmac100
 driver gets phy dri [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.117.90 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.117.90 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.117.90 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.117.90 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tZllh-0003wk-4H
Subject: [Openipmi-developer] =?big5?b?pl7C0Dogpl7C0Dogpl7C0Dogpl7C0Dog?=
 =?big5?b?pl7C0Dogpl7C0DogW1BBVENIIHYyIDA1LzEwXSBBUk06IGR0czogYXNwZWVkOiBz?=
 =?big5?b?eXN0ZW0xOiBBZGQgUkdNSUkgc3VwcG9ydA==?=
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

> >
> > Yes. I have read these mails.
> >
> > I understand what you mean.
> > "rgmii": delay on PCB, not MAC or PHY.
> > "rgmii-id": delay on MAC or PHY, not PCB.
> >
> > ftgmac100 driver gets phy driver handle from of_phy_get_and_connect(),
> > it will pass the phy-mode to phy driver from the node of mac dts.
> > Therefore, I use "rgmii-id" and the phy will enable tx/rx internal delay.
> > If I use "rgmii-id" and configure the RGMII delay in ftgmac100 driver,
> > I cannot pass the phy-mode to phy driver.
> 
> Quoting myself, yet again:
> 
> > > MAC can apply the delays, but it must mask the phy-mode it passes to the
> PHY.
> 
> If you decide the MAC does the RX clock delay, it needs to mask that from the
> phy-mode, otherwise the PHY will also do it. If you decide the MAC does the TX
> clock delay, its needs to mask that from the phy-mode.

We need to confirm the MAC and RGMII design in AST2600,
And we will replan the phy-mode configuration in ftgmac100 driver and device tree.

Thanks,
Jacky


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

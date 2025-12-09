Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB4CCAEAA6
	for <lists+openipmi-developer@lfdr.de>; Tue, 09 Dec 2025 03:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wgw23/iuZ3jw6Uw2vIB2TDZ37GxPTFtgy9obWlbK9C0=; b=ForP0fBmirJYwUXINH3LgzYs5D
	O3o0QIWCyeFhu4FHSs0443j70JB/bzT+/khQ+lUdIX2OQWj1rOh/u7V9GXlYxiq5QyjRsOygjdm6c
	9RF+ozMf4ZWpfs1sq20LZr09tUIOxBWj9QvCvTLwdG1AKNqUeBXd6ks270f0usoQbCSk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vSn1L-0001Bu-FM;
	Tue, 09 Dec 2025 02:00:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=1438273e7f=hutter2@llnl.gov>)
 id 1vSn1J-0001Bk-Lk for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Dec 2025 02:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OloTk9pUnvtEYiZMrkq+TtclGKLRD4ja2v6jKgQq5Ew=; b=AkgEj6kJ0q3rmGJjMXF0l+iqsP
 Pdd0gEPHJzvph9Brdv/28XpR+qPrO4eEYMv9qKOrRBFokQ+fOch+1rqn4ENLRXgLYyMXKxIURLocl
 /3AKiFkw7ajZ1fPdHOLcfKvbm7a+89zXsClL0jeEUAIY+3pea0u/5Oe005D33G3uC0+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OloTk9pUnvtEYiZMrkq+TtclGKLRD4ja2v6jKgQq5Ew=; b=U3XbHuORXx1MQnhHbEKT8GHne1
 NgwkyA8pM7HXXJ/jRaKDtvqP2XxzJ8XTtuZH+hZ1pok3ZnOvhwqZ+zPNEIiybYzY71HT0lnqRx6nI
 5tsb1nbNwKKCXIl/cNXT0qcDXn1XuSYcCgh29j2RV6SJHtJXFj9osnAKtKqxpqCP13CU=;
Received: from mx0f-00379502.gpphosted.com ([67.231.155.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vSn1I-0000Mg-RJ for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Dec 2025 02:00:05 +0000
Received: from pps.filterd (m0218362.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.18.1.2/8.18.1.2) with ESMTP id
 5B91Bqdc027064; Mon, 8 Dec 2025 17:31:48 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=02022021-podllnl;
 bh=OloTk9pUnvtEYiZMrkq+TtclGKLRD4ja2v6jKgQq5Ew=;
 b=l+Vdw0madI2KdFfzvDppQF859h88n858KISotRo6l82xqChg8Yv/Zv53Kj7zIlz4H63v
 lf8OV23AixNt8DFpEAFLSEGm+h1Tbacjoaqj5BT+1Df8MlBGMl69aAE4UGjB6yIVa+iP
 2unmMIuC3uhgVdkNId7T2Sk1fg+Vm/rENK1PIi72yD9A6w8lNjGfXPGkfaslayiJUij+
 nBt6RBu9LcAJ5YUz/tICJIX+6bat0pynznuhmFFlm5pxnr0Oel376nsT7odnHdDBjYTT
 0IxowgwQCIYuSbJKHBTFUUgle9RbF2Fa9YgKVHrD0XZ/G/fthIFkglxJl0AWdI56ZL6S Qw== 
Received: from bn8pr09cu001.outbound.protection.outlook.com
 (mail-eastus2azon11012029.outbound.protection.outlook.com [52.101.58.29])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 4aw5hdcm5g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Dec 2025 17:31:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kb6eGa8PXUEmL8qmReapXPFRR3cgUgtt3rbrbxXknzSchvQfCixIjASAwtPNSFWtQwojdUpj6GBkpRkRfl39ztUi4sg1s1IFYckE/k4NwIzwk591cpU2BFv8cKoehjsFk/y5M6dHEjirHL1fLvx4vKQ814DDxEAJxkObLkru4YgpToLb4KZs2Ww4W5ymHGp0OtJMTBLAgmBtF2zNzGFkiq+mXWkJ4YG+Hw2sWT+MFI/JisPai525ltDQsMNIMcNiFBlnnTHTrItPXP1AJZQgWVwTDxTKARm1xdLHAQIhZ1u1K9Nz55Jhljoymq6yf3g1EyEbZtUBFqxMT0i6XTrmsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OloTk9pUnvtEYiZMrkq+TtclGKLRD4ja2v6jKgQq5Ew=;
 b=D4pFfNG5MPcW9ZbyoV9fC1aSDgW3AOFQ6LJ+kOVCmDIdONZHMrIPBG4Zi8K8sCrSHzuRHZ6X7eudsD2jfjDQQQ8Hobdfa8l3LEyT/4LR5008hYy0PeKvxDq5COaeoU09cjBcWkDlb2iFBU4EitdxIy64OwMKQPQQf5Fy8IoMV/xX58a3o2geKyqF9YGbb90+juxx3oZj/TyHzCZZDh4kfU6S+77Dp4p/9diPex4V+OcJ8oNxXFtXXTkpCmM8rg2nWa2NfjiWM2DiD8H8vYYv3pwMl4EJDnvJewCOId9NvebfU+um7ZmrfF8AU1iGFkaNOTxYlx0gF2WxzQGuRp14LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OloTk9pUnvtEYiZMrkq+TtclGKLRD4ja2v6jKgQq5Ew=;
 b=tBVXhkrHuaWE+YqB1MkFEST9kZC9PVeWexsMNWbB1X5jGTaOHiHpFnMXXmpYK2KOTZhmJ5ArbOb2k/5WDZ1+22utssn15xI75qkdB2EpMTHoBd467YdrtyOHdn4d1HrpcS8ZTnT/PowEY8GRsDM86sG4jgKglIlOT/cV0nw3Y3g=
Received: from SA1PR09MB11481.namprd09.prod.outlook.com (2603:10b6:806:372::6)
 by SJ0PR09MB11061.namprd09.prod.outlook.com (2603:10b6:a03:50c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 01:31:46 +0000
Received: from SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::f6b3:25b7:844a:6d8a]) by SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::f6b3:25b7:844a:6d8a%6]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 01:31:46 +0000
Message-ID: <6198fe41-6f21-4bf1-8dac-c904c062ab83@llnl.gov>
Date: Mon, 8 Dec 2025 17:31:44 -0800
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>
References: <d485bd74-e49d-4c89-b986-1b45c93e7975@llnl.gov>
 <aQMsVUCBDF7ZUSK-@wunner.de> <aSM3x-V4Apcybpax@wunner.de>
Content-Language: en-US
In-Reply-To: <aSM3x-V4Apcybpax@wunner.de>
X-ClientProxiedBy: SJ0PR03CA0206.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::31) To SA1PR09MB11481.namprd09.prod.outlook.com
 (2603:10b6:806:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB11481:EE_|SJ0PR09MB11061:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fa7c03e-904b-4f76-7f91-08de36c2b73a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|19092799006|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1IyRzRmM2RENHE1Y1dHUEltbE80Q0tlUHkzalN3cUVIbzhSdkRVWTZuV3Zh?=
 =?utf-8?B?N3Yxam0ycnRmRjduMm5SMDVkakZXdEhraUZtUU1OelcwL3o1UENNNS9kMWdj?=
 =?utf-8?B?UUJ4WWh2N0lDNTRkU0p3ZW1GdG5DTEJNTVFaN2orbzdMOG4yMW9QRnV2N3lW?=
 =?utf-8?B?YU1wbWpPU1NDYU9lbnFJb2hzVDhKMWo5cjRaMjBMcWV0Z2ROalllWHU4OXFI?=
 =?utf-8?B?V0dQYnhjUVlGd0Q4TCtSd2RneWkwOVhWdXdBMTFqTFNCYXF3SnhXVnhIamM2?=
 =?utf-8?B?WFNnRFFFVitUbzg4b1RUUmF2dEFFOVpuZU1hanh1OFFBN0NtUzcra3h3bXlO?=
 =?utf-8?B?dDlncFFLT1Qwb3pxTXBzNnV2VGdIS0QwSllOV3BxWjRzNDlXZk9jNUluQ1N5?=
 =?utf-8?B?WjFzS1NRVTFBY2IwQ0wzNVhnQ3RsY1FUUjVSV1RFeUxBWDg4TmRsTkh6c0w0?=
 =?utf-8?B?VFJsU0NOZzA0YmhmRFJ6WHdXV29kNi9oY0lvaHpKa0tka1NzSzd5LzlpQjZy?=
 =?utf-8?B?dU4zaDZHb3RXZFFiUm1zcFBwQk5UOXVQYzVZWUk5RjZYMjBFZU9LMlRoYzU5?=
 =?utf-8?B?RkNZR0pSTEZ3a3hkd1lRNVlNdWwxd1hGMTZQNUxXZ2FRb0thRmZxWHRuajky?=
 =?utf-8?B?eEpEdkVZQVdjbzZDc1dQOWJKY3JyR1YxbEN4N1dkbmExRTJYZW5RbmdnbGZD?=
 =?utf-8?B?YTNTdVlaSVRKYzl3bTlQdDBMeVdMelY3U2VGSnNram40OWc1RDN1d1cyVjND?=
 =?utf-8?B?eEl3bm5OaXpTSDhCcXIwbFlwaDM3Qi9Fdi9yQ2Jub2prdFNwNVc2K1NIVHlr?=
 =?utf-8?B?K2RPRTZJTW5CbVdnblE1UHFjdXVabmlVaHF0THhscW56alVuVm9QWnhGck9z?=
 =?utf-8?B?bDd2YlZ4YUs4UG04b2RDV29KdU1jdWc2c2pDZ0t4WVpkVU5UMW02aUoveVJY?=
 =?utf-8?B?eExKVmE4T0tlMTNtYVlSQ1hDTmk0ak1Pa2F5L1RYYy9JRlZ5cnZJOXlEL2Ra?=
 =?utf-8?B?aEJTVUptVDVQSG92S2hLbUJ1QWx0MXJlRkdlTnh0YlJaWk5yeHB1VXJNcWlJ?=
 =?utf-8?B?Y01JTmhCMThKZExDa0RiTUtjcVV0ekk5SE8ydGZVV1Nid2FQYXZDaFRzNEQ3?=
 =?utf-8?B?TlJDN1prYWljYU01amxMNk9aV0Vra3JxTGxuK05MVWNsUTFnWlUza3ZVQ1Bq?=
 =?utf-8?B?WFRaQXFQbjE3RysvekxYbU9ZYndFSS9RRHprL3F6WTRCV2ZpWmQ3MmtsUTF4?=
 =?utf-8?B?MTZwZ1RIMGErZlVVRS9WS1dockdJR3M2N3l3dWI1UHpEcEQ5QVN6VDI1SEtO?=
 =?utf-8?B?WWJYdndmQ3F5bDF6bmd5RGg5VkpBK1MrdFpZS0hUYWZPTHVyajNFMDd1QUpM?=
 =?utf-8?B?Q2lIOWpZL0FNYnBLUi9IZmVkNVdONEhkRDR4UWZCQ1QyaVFNbERzbzFQclZB?=
 =?utf-8?B?L1N6c0lnUFJyUTN1SDJ2SHMxTUZad0grby9EcUZzMTlFbExkNzdpcW5IYkVv?=
 =?utf-8?B?WU1HZUk3SFROaW5SR3ZsT0RFR0pRYVFaVk1Ldm9sL3UzYmRFNklqWHdFL3Jy?=
 =?utf-8?B?SkVWYW01NkVWWkkzUTVRaTZhY2UwczV1bkZNQzFLdEo2VlFoYkVrWm5XVmxK?=
 =?utf-8?B?SDRxWm80TUEyR1p1d1VBRnhQNk16c2RZMGdib0hXV2JuZ3o5SXBnUXBlQ2hl?=
 =?utf-8?B?cmxlU3lOUTlENFVIOWhLUjVjZ3ZwTUV1ZnNOQWRYSzVBTlhPVEdhMzh4OW1x?=
 =?utf-8?B?aUowT093R1FvZ2pxMFJNaUtrWm52TmlHRzc1amtLQ0hvcFhWcE5QWFNMWTlX?=
 =?utf-8?B?TFJZOGdMb1l6ZlZkY0Vha3JHTUhSMXpzeDhWb1VtWEJPQngwbXVwMkViTzRU?=
 =?utf-8?B?d2lMVC9KQklpR3NLVW5tVWFXc0FWS01EdXJxUzB4YU5kQ1pYeTVSNDZVMmtR?=
 =?utf-8?Q?MvagK2RGwpNJOqgIQx7HgcCL5RFMCa0x?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR09MB11481.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(19092799006)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFRZdGJNNzlQdmozM2pJQWJBbVVWeEpGYmprVnkzOTcvZi96RXNSTVk0dVNC?=
 =?utf-8?B?bmNkK3VEbTB0MGdnSE5OaXNNVk1BSXkwY2hJNlUzZUhWK0gyUVpoOHZxd3hU?=
 =?utf-8?B?Y01IZHVKK0NsR2d4ZFVBS3BGalBQK0grMDBESFpXV3ZNQzRnYzNQYUErVjlR?=
 =?utf-8?B?K1FrRWJ0ZlFwYlREd2J4T0pxbTJkNFZkRDRJTUVscU5KWEpJVXppUG5BWllW?=
 =?utf-8?B?MFp0Y0lieE9pcy9pZUdqaHFBaDY4M05kQ1cyblNlalpneEczSkIvQW1yQkxR?=
 =?utf-8?B?MzZjYmVBcC9YUnlTZlVkU0JsWDR4dVI3Y0dQSHZDalN3UGtSN1phVG5PZmY2?=
 =?utf-8?B?UFY3TTl5WVdNODZmRkFWTUZ5YW5WMXR1NmNzbzBGT0NHRUwyekxHTVU2eDJU?=
 =?utf-8?B?OUtPb2o0bk5KTXRRNE0xN2JUbUV1czdHVUs1aUliTGR5TVpRSFFnVFlYQU5Q?=
 =?utf-8?B?RmFXT3lSMCs0L2hlN3dKekZuT1dwbjlLVVg2VGNuOUxmbktKVHRyWE14SzZx?=
 =?utf-8?B?USt2dmFrUFFYTHcyVTZDdE1IdEZKNFFyd1pWSk14MjRTdXd2MlZ5U0N1cnVE?=
 =?utf-8?B?VWdpYWhuME5iUU9KNGpGWHJHOUFVYTdHb2dvc25qeEJQNmJJdysxWmZ3K2ZU?=
 =?utf-8?B?cnc3Ui83eDEzRVdWUUpPcS83cHRyMTBrdXpLZ0NXN0d1ZXVvSkNVMEVrN3hy?=
 =?utf-8?B?dUViVGRrVXBBeStUekxRYWZaRDFKODRzNVNocFRLUE5sNFY1Y3hZMkU3OFh5?=
 =?utf-8?B?MjE4ZWhneGErMVJ5WDcwRGJPMDB3b3dGb2U5Y1p4TlExNm1Kem0ybVFZM2Yx?=
 =?utf-8?B?eHc0RDQ3TW9lSWplRFRLTm1BVHNOOUM4c2JNUHYwdENFYWRydmNjMHpUWXlW?=
 =?utf-8?B?R3FXNmtaR2J4M05nZTh2YjdqUGdqMlJuZEJUYy9yVHZuRU9SdUkySmpiWUNY?=
 =?utf-8?B?WjBhVDNnUXZ6a3hoME5TQzBsUldlNlVGM0hyNmtxTy9DalJkNjgwYkVRV0Fs?=
 =?utf-8?B?aUtOZG5LOURZcDl4QWtyRFJ1Y1o4UHNVWlVmMTZKZDdpQ3Vyalhvc0podE4r?=
 =?utf-8?B?VXppY3MzalVDRXdyTUhCTXJ4Mjdza2RqQ0VpZFlKQVNQREJJNkZ1ekEwMnBk?=
 =?utf-8?B?SlhHQmxIdWo3OUR2NkVhTytTRFlvWXRiakVsUzg4YTZvazVNVHU5bGxrNVd1?=
 =?utf-8?B?UFpxTFRCazlmQmx3SkRtaEtvMTgvRVFlTlBOVGpSdWQrMjArdkE1MWNrTWxK?=
 =?utf-8?B?SDR1RzgzZlFNMXdTOFBmSXRpU042aDRIdHRjUis1WnJQR0lMUnZ6MXcycHdP?=
 =?utf-8?B?WkdwZVorUTNKSkU2akNJTEEyWjVIOVBxd2dXVTNITUYwTGdSSEprdjBCTFUr?=
 =?utf-8?B?VmNjRHI2aFExRG5HMC8xcklqNXlKQ2kyd2l1T2lJamw4Z2p6aGRadnd0Z0Q5?=
 =?utf-8?B?ZDVVdFZ0SDRHakdHZStjc1F0MFpzemErWFFDWlgxcitqOTZSdm9oWXMxRGFw?=
 =?utf-8?B?eXdKRy9sNEhsdjdyVll6Z1JuYllyTGNaR1FranRWU2svd2JxUzVmdEdrNE1k?=
 =?utf-8?B?K3p3S2ZpN0x3TTF0Z0dLMFpldkNpTS9pS01iNDlwbzI5ekd6dDNIVDBqTktu?=
 =?utf-8?B?VmdGb2UveUtkVForcXVxLzRNVjRzZ0JFK1NQVXFwY2xGN3dmUEp2QlpHQlIv?=
 =?utf-8?B?S1dVckg5MCtrcGtMR1VpNTdkdm9Sc0gzek1ZWUpMeXREeC9waDA0aUZSSHVt?=
 =?utf-8?B?RnYvT1B4MXBiNlFyTHAxbTdQK0h4MXg3ZjZqN09vT2Iwb250bDNiTHFYc3Nn?=
 =?utf-8?B?MWptQndpVkh0V3VwcVRmMmlINWdORE1PcTl1Qzg5QUhIditPakJxbTlNWWMv?=
 =?utf-8?B?SmNudk8vYXJMTzh3bzVrQW5wVDFtTS9ta29aNUUvaEJlTGROc2RmK3dTMVlx?=
 =?utf-8?B?dW5UTUkxUU1Pa1o0aHpGSXg1YWZTSk5NdXJiWDRJN2tKTVRqWm5acDVBeWN2?=
 =?utf-8?B?NkFMRGd2VEJXUHJ5T0hTNW5paHVGMzIxU01VblhRWUJNMnF1Q3QycmtNaWc5?=
 =?utf-8?B?ay8ydGFzb2ppVDNLeDNKTlM4ZVJTYTNDMGZkZUdsazE3TmlvV1IrOG9mS3hJ?=
 =?utf-8?Q?KJbfrEYR9TCUmq1KV8YV1eLwb?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: /nkJwoUoxB9PJTxDGMza+XoP70jqGny8tZ8l5bcwfF8xY0Sh36riPxBxv88SbqBkcptb3TqCN890UShmip6pmLcfDs92QJsO5gp96o2iF83CKN+mykfLikGtHlKgXno43MvkOOscG3lkPuE69cbGN0VNUb1kmE9d5ob0W53R0ta+4wM6Eo4ERVhPcKAXSXEgdpIIEzmuSW2AvuMFXF2uTd6qCp8/UBx125eIoPAgA8U5gPqjT0qvhRt2OhiG86WPhl+N/feWf/ITzasMyu/jB0RimQY2J/mPrk2Re8WQnjrrglD7RXUTSBlpyZk5Zm/u1Wyk1tZyhn8A74Ht90Z9WLqKgp/GyFoVSBN8QXRml9nGxcMSamcVI2MhbOIQT08YBE6YqEXUjDS8PTq1/+GyMfq3y1cnxFdeIJ2vSh63AMQ+8qX1t4MJnq24jPpTL+0NKSm5aKh7bYUcMpPiNgAoHwokj1S1t4FjXMTf0oYTOj1BosUqym9CWOEn6tn5pMCyeEJlmobhjyW04HNzEyexBxZV+/CEBb6OfJNSX1Q0RDxcaO9qpK5t3CNXdXJKxI22vhU01UKRN1dfof/et7Z8vFLUTAm8sBAi2FOVcQcc75QLnMpDu6AytXAD9cDZ9zcHpmezl0+Xeod52MD8ElFu/w==
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fa7c03e-904b-4f76-7f91-08de36c2b73a
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB11481.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 01:31:46.0704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB11061
X-Proofpoint-GUID: jG3tngsFfZ5bHF_2-EarGcgKYs2tVYFZ
X-Proofpoint-ORIG-GUID: jG3tngsFfZ5bHF_2-EarGcgKYs2tVYFZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDAwOCBTYWx0ZWRfX7wvI3kScEtMh
 zzKA6dnfYf7jKUpnVnAqX2BpWncjnjTV1OWG9qLbFVULweoPnbJt4rdmcUh6wD1/26Wx5H4vhm7
 SR+jblciaOEwTvQTP4OxtnQ6pbGTi6Rq5TzkzON41Ty7lBCzroqE7iSVxBmDDG1l7bgQPPDF5J3
 Havx5pliup+h6oshU2fcgNckc4LdYVQG8zpq3nCPyzncnbTS438CAiLrko/4WlcnqHZCC67MeLT
 FMutZcipzEpNabmfRmSZTl4/BFxu+po+xVWBvTxS9jpKdZeJfquWS73laL7Z0BIabTDMSilu8XN
 aDw/dI8/HuRh+lMbFzlVNO3xD0w/VwNcJTfIFEvqFrc8M+1+9UMaZ7yLpX4wUEM7jjoH3ScLfOf
 j9gRzPvv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-08_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 bulkscore=0 adultscore=0 clxscore=1011 mlxlogscore=797 priorityscore=1501
 lowpriorityscore=0 spamscore=0 impostorscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512090008
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > You may want to consider making this driver modular and
 auto-load it > using a MODULE_DEVICE_TABLE(dmi, ...) declaration. Thanks for
 the suggestion. One of the issues of making it modular is that craye1k has
 a dependency on IPMI. So craye1k could get loaded first and create the
 /sys/bus/pci/slots/<slot>/attention files, [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 FROM_GOV_DKIM_AU       From Government address and DKIM signed
X-Headers-End: 1vSn1I-0000Mg-RJ
Subject: Re: [Openipmi-developer] [PATCH v6] Introduce Cray ClusterStor
 E1000 NVMe slot LED driver
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
From: Tony Hutter via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Tony Hutter <hutter2@llnl.gov>
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, corey@minyard.net,
 Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> You may want to consider making this driver modular and auto-load it
> using a MODULE_DEVICE_TABLE(dmi, ...) declaration. 

Thanks for the suggestion.  One of the issues of making it modular is that
craye1k has a dependency on IPMI.  So craye1k could get loaded first and
create the /sys/bus/pci/slots/<slot>/attention files, but none of those files
would be usable until IPMI loads.  If you force it to be built-in, then you
pretty much guarantee that if the 'attention' file exist, it's usable.

On 11/23/25 08:35, Lukas Wunner wrote:
> On Thu, Oct 30, 2025 at 10:13:57AM +0100, Lukas Wunner wrote:
>> On Wed, Oct 08, 2025 at 04:48:22PM -0700, Tony Hutter wrote:
>>> @@ -376,8 +383,16 @@ int __init pcie_hp_init(void)
>>>  
>>>  	retval = pcie_port_service_register(&hpdriver_portdrv);
>>>  	pr_debug("pcie_port_service_register = %d\n", retval);
>>> -	if (retval)
>>> +	if (retval) {
>>>  		pr_debug("Failure to register service\n");
>>> +		return retval;
>>> +	}
>>> +
>>> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
>>> +	retval = craye1k_init();
>>> +	if (retval)
>>> +		pr_debug("Failure to register Cray E1000 extensions");
>>> +#endif
>>
>> You also need to annotate craye1k_init() with __init.
> 
> Sorry, I've realized that I made the following note during review
> of your patch but forgot to include it in the reply above:
> 
> You may want to consider making this driver modular and auto-load it
> using a MODULE_DEVICE_TABLE(dmi, ...) declaration.  craye1k_init()
> would then become the module_init() call and you could tear down
> everything in a module_exit() call.  If you want to run craye1k_init()
> earlier if built-in, use e.g. an arch_initcall() instead of a
> module_init() call.  There's precedent in the tree for combinations
> of arch_initcall() + module_exit().
> 
> Thanks,
> 
> Lukas



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

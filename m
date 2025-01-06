Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9135AA01DC8
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Jan 2025 03:48:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tUd9m-0004XF-MU;
	Mon, 06 Jan 2025 02:47:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1tUd9j-0004X5-Vh
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 02:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ZU7m+Fv2jqAAP5/4ZfABtKZmW9/waOAw+dLFtVtYyM=; b=FG2wdSJd9xM8yJjsWMjyaWxfH5
 MoTrnARXZ4Ia4hFpR96jhitB0MBUnfRvfUhkauUezkb6+Djsijc12t9ZiO6EA+QSCETMFr7m3wCv+
 hjJsujrn2xpZAH+0lL3V0n9dOvML3NAlV3iYZxCF6rxwBT3Pzb2ErspUqmF75JO3envA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1ZU7m+Fv2jqAAP5/4ZfABtKZmW9/waOAw+dLFtVtYyM=; b=Q6NfIkhDb1mn8HUYIV+HMLiViV
 N/Ll2G7q6QdQiKtPcEFI8FBNqTZABm+j0uWKFBp2FrtS2RCv3wMvg5iMdnNVacfJfjp8+34Wqy0Jt
 n1lFEIyGiHK5h6zY+UUvwymYjkEfkyQCfkXzRXqChHdrjJ9gsu1pBmJIAohoJsHSABWk=;
Received: from mail-dm6nam11on2136.outbound.protection.outlook.com
 ([40.107.223.136] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tUd9j-0000u0-9k for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 02:47:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a38q641Zf7GE5gENqZCN/Tgoy6cKxFFlvxyvU9cM/6bBlYj+UUdlztu3Mh9TMAjCptty+WpETrczJ8UKJesnf9GbM8bYMOcWbE5GngF2uMIptgyfwsuDYQJqiiID1zX3Ze004l3Ixu56fWsmHzIqkYBDn36ZhAyRKSWM1U4W8SikOSG8pWoUsh2Grdo46tgMEj/HNfR4dQZOJhyu0BoN4JhLM3pEC9Hi6OuBurqAcuSm45gxiog8CqNT/XuS1qwau+OADFVuvtddFJCGkkQ7AMU4pDChAJ5qEHw2dkWqJKVAJZMz86HShEbpBeuqtHs956ExBgAuO1rfkItc01OMjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ZU7m+Fv2jqAAP5/4ZfABtKZmW9/waOAw+dLFtVtYyM=;
 b=sZF+82aZItIQ25LhAP6/yvOWG7ghsBcXEJv1p6zu93cfXkHCDMHdXx+JQ1Y6y+q4y4m539msk/W41oX9nGV9ShBo5nR3iQ1hd5ZFoVnOVFRwEp8h6XR6subkqojQdpGjU+YILNOYODUQeSKgj2Ga/5wOChF7g7I0WsbetebNWqMTZyRRUNrFuNvU6bmdV7+eA47JWOXR+jMujl7DJ9tj1CCyVZi+Cl1XYjJvBrWItfkEQGEbJeykJHZ5re5seF2NyO9LC927mfwb+UkqY88bzlV1C4DQOoMoLBAohzKZXAefzz1ZgkAgOx82FJgyVxfXpSf2Bk1n0ZeP/g9CbjGpXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1ZU7m+Fv2jqAAP5/4ZfABtKZmW9/waOAw+dLFtVtYyM=;
 b=aMIDFxwxfkvOcs9vyXdSoZkahg5CZUGpXZvuj49Yfyc/nqW9+D+yCzDLGW1b5KzN24QJyF5uHkW8zDSG2ZGAiRJCkjsepwbPgZjmikAZGapTZlrcdFDQi+KSzpejbjetFQwCZLqtx8SAwmn9VILq01oXmPfN4933ATyPrq2AKM8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ2PR01MB8193.prod.exchangelabs.com (2603:10b6:a03:4f6::15) by
 BL1PR01MB7554.prod.exchangelabs.com (2603:10b6:208:385::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.8; Mon, 6 Jan 2025 02:32:30 +0000
Received: from SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d]) by SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d%4]) with mapi id 15.20.8335.007; Mon, 6 Jan 2025
 02:32:30 +0000
Message-ID: <344a5d68-bcb5-46c1-ba58-8cd95c3ac4ee@os.amperecomputing.com>
Date: Mon, 6 Jan 2025 09:32:22 +0700
User-Agent: Mozilla Thunderbird
To: corey@minyard.net
References: <20250101165431.2113407-1-chou.cosmo@gmail.com>
 <c92cab21-ca41-4f34-b507-e773c463d82f@os.amperecomputing.com>
 <Z3ffxfF6eEtvqOxx@mail.minyard.net>
Content-Language: en-CA
In-Reply-To: <Z3ffxfF6eEtvqOxx@mail.minyard.net>
X-ClientProxiedBy: SI2PR02CA0054.apcprd02.prod.outlook.com
 (2603:1096:4:196::13) To SJ2PR01MB8193.prod.exchangelabs.com
 (2603:10b6:a03:4f6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR01MB8193:EE_|BL1PR01MB7554:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bed3760-e5b6-4496-ba4b-08dd2dfa5e2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHZTM2NuWU9QTm5DYzhFR00zTVBSSngxRnJKa2NESyttOEd4UlhOUS9ibUpm?=
 =?utf-8?B?bEhOdUc1bDN3TUQ5OEwwbHNqYVptOEMwL09kSGVYNDJMZ0w2a2FEUWYvMk5h?=
 =?utf-8?B?STZEam5ubUVhSTZ6cHR0TWl4azdwa1hDdU9HZzhJY09iVU1teStZRkIrc1hp?=
 =?utf-8?B?TDgzSStHc0pEL1ZWcTIvOTBmSDlpOFhKK3pqNVl2enFLUmRRbisrOThDc0RM?=
 =?utf-8?B?VGRRNWlibnVENjFTZE1KblBGY2pWblBBNlc0NmloSm5JODBOVGpMcWxUZGVq?=
 =?utf-8?B?OFlxdkV2S3hKRHR6eSt4K2N5SVhKaTZRV2YxUzBONTJNcG42ZEFZcE1acXNq?=
 =?utf-8?B?dGxlTzFKNzAyWldtSDRUNzVMZmZPeWJGNVgxUStCNGwzL1VOT3NrOTlRVDZY?=
 =?utf-8?B?UUZsa2JQeUxMOE5hc05QZUo0dHBWeGtIdzVBeldwcVVoeWZLZElpbnhHa1dl?=
 =?utf-8?B?VDFOTDhrZmtrOXp6YjVtU2VqK2VvZWIyNytTeVlnMXJNZ3FoSis5aG5RSnd2?=
 =?utf-8?B?bHNNY2IrNjNoMm55a1ZpeHpWVkt2aWhwWWhWc2NGVHE2cU9yZXNvVUtIQ0dn?=
 =?utf-8?B?MVhNTWpqSWNQQU5vbDE1bjZ3TFhYZGt0YUR3OXFCVGVvWEd6MmlWdjFtQklX?=
 =?utf-8?B?NkNKREVkd3d6S04rWnR1aVBPdWVOQkpjNkN6ckV0T3AzeGErSkhHTlNIbFhB?=
 =?utf-8?B?NlJYWTNPM2lZV09JN2l2QnBPZFhvRlRvc3F3SGxsWjVqdzIvTFd4WkJ4ZTZH?=
 =?utf-8?B?UytRdTN6Sm9WMEJGWnd4Um5MMGdyYjk5Sk0vV1U5UUNIeE0yRDY4eXpwNHJs?=
 =?utf-8?B?bTR4bnpuQnVZeFp6SU1JZ0xzQW5KMmk0dkdoWkhmZlJlakhEK3lCRC9Ub21r?=
 =?utf-8?B?Uk05UjdkNnNsMWxpYTBvZnYrZmxGU0puMTJQR0wzOFpGQ2R6azdyaFFCTUNJ?=
 =?utf-8?B?S2VwandYUW1iamRqMG1reDVmZFJUdG9CZENWVFYwOE01d3FtaVZxQjMxT2Uy?=
 =?utf-8?B?QnIzUXBibGF0eFoyMmNVUGwzWUhqTkUzcERqNkNsQ29UUzZ6dEkvNk94MXd4?=
 =?utf-8?B?d1Nyb1J3U1U2QlV5WVRWcDZPR1RyRkVaZHMwaVdxc1lwWXQxUlRZc2xGWGhB?=
 =?utf-8?B?ci9IQjJrZHltUXMyVzRZWmp0SE5IbzZDQUdqSkJLR2lPSlVOM01FQ2ExbjMx?=
 =?utf-8?B?YjJaa25SOTZ0RWVraEhGUGpaRmR4MHdidzcySmFHUHNoQXh5ZFpLZGdWR2du?=
 =?utf-8?B?MW5YVFQwU1V6QzRXQ0lDKzNOcitIZ0VTNWJwOHJMbGtCR2VJQmtQSkQxWUJ0?=
 =?utf-8?B?blJpTjhXQTk2QVpDdlJnb0NrVThZQVYxQ2FDbXlIdGVRLzYvUGYzTkZWOTVD?=
 =?utf-8?B?eHdqeDJ4N1N2OVFsZG03VFBSSUNITkx4TjdjUnRxVnhOWXZTdFFOV3VOdGlV?=
 =?utf-8?B?dC9HRVFjdGdWbUpZc2FUYVRaT2JEWCtGT1hFZXZNQnFyYXpYODhUSDRzeFNM?=
 =?utf-8?B?ODJqR2ZsdDJ5eVpBMGFnZUNGWXRLN1BjcDI1OElYWjBwWHg3b0huT29ISzk0?=
 =?utf-8?B?cXA0cDZjV2hSd2JQMG54UUg2aENuNUFXQkxrUi9zN3NOQUJpYUsxMTREQWJq?=
 =?utf-8?B?czVXN2NEdCt1amoxR0tVWU16N3RIYVppTEdpSDFXVE56MXFTaTFuRi85VE4z?=
 =?utf-8?B?K05sdUw0dkJVaTZXZkRiTVc3d0FuUk5CZWs3MjB4ZDhBRldZNzRuNCs4RWMz?=
 =?utf-8?B?S2FsU1l5T1dRakZjMWZ3YzZIZkEzSGpMOHVWWXBUOVBtLzNBcEVpRXo0eFJm?=
 =?utf-8?B?UjhqYlhuWEhpcitscWdGWTBXSVZmR0xvNUFvOGJDK003OW5QS1daa0FHZ2Fp?=
 =?utf-8?Q?IhpWsnVsbHL81?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR01MB8193.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHNzdkxVU25SQjdFMmtzVkRqU2RiekR0eW94OFpvM0w2TWQwRnRGVmtSbGU3?=
 =?utf-8?B?T1pwamNodjJjZDlLRHFtODk5RHBrUVQzZGF5OGZHMzkvRHd1RnR6QkltN3JR?=
 =?utf-8?B?am9RU1pncjc1TnI5b1VmaUdBQzF3MkdBSzBLWlJtR3BsNHhCTEZlb1RmQnFH?=
 =?utf-8?B?YlAzRE9JdWU5dU1YdWdpNmZvYitrd05qL1lhaTRXTXZEaU1zb1hFbkxrSGV2?=
 =?utf-8?B?VWw2SGdjTFZyekpWa1JLS0pkd2prd0d4VFNTVlBualJ5K0ZpcEdHdnpuMzVR?=
 =?utf-8?B?bXZwN2lFRFp3Z2JjaGsvTVhWQkFoYzdlTEZXUTlaRzU3K21uOE5FMGxJL0RR?=
 =?utf-8?B?TGQ4Mkc1QmNpaVFGTFNGK0dmdHZKQ1FXaVlYWFZ5QnpVSW4vY0M4SzY4L3cw?=
 =?utf-8?B?NXdwRFFaNVFGeTk0cEliWUZjb25FTHJmVEpPVHpPUzFaajYxMFBiWVFFWm1V?=
 =?utf-8?B?Z2krY1BuWjY1R2hoQUkxY0lZUkMyUytLcWs3cHBvVVQrNTNLaEZEZnB6Y1Zh?=
 =?utf-8?B?bFpqVTd2azVkZ3Y2a3F6UGYvTWZiYXpqYW1mdU5SYVZNUzhkaXd1dHNDMDI5?=
 =?utf-8?B?MEFNazE4K2V6eUxPVUczTDJsV1BLbVRtUlhWek5DVDl0SS9DUldWMEVIN3li?=
 =?utf-8?B?ZTFlSGtHOGhkSGwwdWdUT0FvK1JTS01aaWNKaVFUUlNTMGlpenJSRit6THRS?=
 =?utf-8?B?Q0dWeGFGRU9aV25PTExibDFMa3dXcHMwZEViS2dBVUxGL3NBcUNHOUFNbFBj?=
 =?utf-8?B?UWVvVllQL3MrSWtLVUR4MUM3aTFiWmNVYTRsMUd0WTdURThjYlE0eUVDMTdl?=
 =?utf-8?B?N24zWXByaENhZUNWY2t2OUYxNUdtVXFyS2VKcFZEQjlyZGtBeHcyN3lNZmVJ?=
 =?utf-8?B?SFgraTVveDlmdy9RTmdPRHpUam9kMVJxZk03RWx1bEJoUnIrVDdnU1g3cG0x?=
 =?utf-8?B?eisrQVJRQkduRUhTQlAxOXRJMS8zRXlEdlJIWkVRVlR5a3NRd3R6elRmQWw0?=
 =?utf-8?B?cHFpSlIyOTViMGl1R3JWbktRTDlQWlErRERtUEUzRmRCN29RQ0ZWRzNLMS9j?=
 =?utf-8?B?bEQ4QWN0UzF5dm1vbjd2T0d3czBqMXNXK3JLRSt0UHlEVGh4clM3b0IrUGtM?=
 =?utf-8?B?YWc5OTNOc1dkMXRick5mclorVVZWemxlTDkyVG1nUXlqRHQ0bGo5Mnp2Q2x5?=
 =?utf-8?B?NWt1MFV4YmlWOFVNOW9paFhwUGlqNjQzYmh1eUd6a0szbFZYOU92YnZ3WU94?=
 =?utf-8?B?UWhtUVJpNnJBQ0xjdWtjT1N3Ynk1REZ4MnlXbXRsNWxiWHNSbWJ2YWhJS2di?=
 =?utf-8?B?OEpBbUsyQkNmSy9jeXByQytqdWZZSE5CZ1p5Z2x5bmF0UVk4TGdBRVpXRFFU?=
 =?utf-8?B?K0FSaHRneFZ2TnZOYmNBT3hHZUlram5LNXRyWERKalVoU240SVU3UndEc1pN?=
 =?utf-8?B?TExqTEc3R3FJYkFubWlma1N2aDByeUhKR2tBTEVUMWJVWDBmUzR0aHVpRnNu?=
 =?utf-8?B?ZGR3V0trWWs1Z053L0JCY3VMSlJsV2NpV1dkdG9Pa0FaWmRuTTdkT08xai9l?=
 =?utf-8?B?N3ZIOG10aWJlOXZGaVpRMWZZd29xQWsyNVAxejR1TGRNU3ZHOTZJb1NDQzRL?=
 =?utf-8?B?Z3cvclc1V3pidVY1UnlTTlpYcjl2MHpha0NhaVpFZm9jY3pyblpHbXlacnVk?=
 =?utf-8?B?K3JGZEhiRTViSU5UWTRCNEUzbnk2eW15SkFWNk9PSTVIeHNKWktvem1Fcm9o?=
 =?utf-8?B?T3owRnFiY0F6OGZDZ3RiK1FLZ2I3ZEJmYWRneUorc2o3OW02SHhOaytSd0di?=
 =?utf-8?B?TUl4WkpqWnBWc3FaU0pnTjB6ZFZORll2R1lpenlvbmV4QVZXMjNKTW9qdEdI?=
 =?utf-8?B?ZWFSQWFrLzZMZURUc2I5S25kS2NwbXJ1bE5NRTdnRjM3N1NFOG5jTE5YNXhi?=
 =?utf-8?B?NkFVNFZVdFN5c3YzV3FXVmlCQlhWRlFqa1dkSmFpMjJnWitsS0xiQ3EzZHBu?=
 =?utf-8?B?UUt1REc1L1ZDdkJ3L2Y4TjdRenU3Y3JmRlRYS21nYjduTENIZG82em1ONzA4?=
 =?utf-8?B?TnZNcitFRHIzNGwvckJUYmZzM3M3WHpHL0E4UkJORUhqNzduRUZKRnd5Zm4y?=
 =?utf-8?B?a3orS2JTcDVJc2tFUTNwa211anFyRms3WUVmQXg5b0FBV1pzNUdxNFpOcUd0?=
 =?utf-8?Q?AJenqRmx3GfVzIShT90tklM=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bed3760-e5b6-4496-ba4b-08dd2dfa5e2c
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR01MB8193.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2025 02:32:30.3001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b84ivDfs01Sy0K/sDH1P1sC2iewjW6S8OEV9lwkbCFlrS9QyFkjLJwvS5ekuosztiTP7XWhSNjLpNiyOSWT0S2yUAthnOxKUzLgkFlhrHng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR01MB7554
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 03/01/2025 20:01, Corey Minyard wrote: > On Fri, Jan 03, 
 2025 at 10:44:46AM +0700, Quan Nguyen wrote: >> >> >> On 01/01/2025 23:54,
 Cosmo Chou wrote: >>> Move smbus_cmd assignment to the end of pro [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.223.136 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.223.136 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.136 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.136 listed in list.dnswl.org]
X-Headers-End: 1tUd9j-0000u0-9k
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Move smbus_cmd
 assignment after cleanup
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
From: Quan Nguyen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: minyard@acm.org, Cosmo Chou <chou.cosmo@gmail.com>, potin.lai@quantatw.com,
 linux-kernel@vger.kernel.org, cosmo.chou@quantatw.com,
 openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 03/01/2025 20:01, Corey Minyard wrote:
> On Fri, Jan 03, 2025 at 10:44:46AM +0700, Quan Nguyen wrote:
>>
>>
>> On 01/01/2025 23:54, Cosmo Chou wrote:
>>> Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure
>>> the new command is not lost when complete_response() is triggered.
>>>
>>
>> Thanks Cosmo for the catch.
>>
>> And, IMHO, the root cause is the memset() on part buffer called in
>> complete_response() is not quite correct. In the current implementation, the
>> complete_response() should only be called when the READ is completed, ie:
>> only on I2C_SLAVE_STOP of READ transaction, otherwise all the info of
>> current on-going request will be mistakenly cleared as in this case.
>>
>> This patch is good and I wonder if we can make this a bit further as below?
> 
> Yes, this is probably more future proof.
> 
> Can you send me a formal patch, with a "Found-by:" for Cosmo?  I'll
> replace Cosmo's patch.
> 

Thanks Corey,

Will send the formal patch later.

Thanks,
-- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

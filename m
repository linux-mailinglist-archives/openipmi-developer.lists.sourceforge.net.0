Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE647B3501D
	for <lists+openipmi-developer@lfdr.de>; Tue, 26 Aug 2025 02:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y7oIfqgiggtLT7RYsJEj3bogzwkCphvwRFer9E1o9no=; b=CgMWQZfmtNuyJXDnvaVMT6IyS5
	Tc71ZYPIcfh2CwZU9diPlw2RmD9ACK3oLYaDoo815uuLYg7imqUMuUh4wmo7r8q7qsrnwhbLYEQLm
	MOCQzn0dCxKPkjeMNSF/eTl+t57nWRKyHIIUWhsAqatcTxZhtwKFURjRw7TfgURkZn0o=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uqhMT-0000fI-9J;
	Tue, 26 Aug 2025 00:16:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=7333b04e8f=hutter2@llnl.gov>)
 id 1uqhMR-0000f9-3o for openipmi-developer@lists.sourceforge.net;
 Tue, 26 Aug 2025 00:16:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EeYUzz7TwEJInmZTAL0uoiK86kbwKpEJFl5WzBNv2M4=; b=CTuV864PiNm2ktu3/u81gFZnZS
 vkaATSEStaS13BCyp1ZpHrDJbBSGc8WQIjieFz+/AWXOGXaBrzIZ3pky1kK3lgfX3WqB0ZUNb4CBM
 +fQCVuv7RWa/pv0M7vMr5fzvtxpxWljnsyIEuQ8KEikI5BwpJKQ4DEeXiVTFgt8M1S4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EeYUzz7TwEJInmZTAL0uoiK86kbwKpEJFl5WzBNv2M4=; b=CyCEuLhEdlL7IRHigOGldvrUKL
 qr9Cxl5V0jRUdmfxok6ugcl9Iccx0AVj66nO58VW8o/NqWUrSveWm0Wu3dBzywLUMsvQuFSoiKNcX
 CM8JKrufWFMPI5WliYMadpESc86zuBpCjAoBwzZPfTUjT9dj25LyXkr4GfhiocBK8qXo=;
Received: from mx0f-00379502.gpphosted.com ([67.231.155.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uqhMQ-0004dI-GH for openipmi-developer@lists.sourceforge.net;
 Tue, 26 Aug 2025 00:16:27 +0000
Received: from pps.filterd (m0218362.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.18.1.2/8.18.1.2) with ESMTP id
 57PIkGKD023192; Mon, 25 Aug 2025 17:15:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=02022021-podllnl;
 bh=EeYUzz7TwEJInmZTAL0uoiK86kbwKpEJFl5WzBNv2M4=;
 b=PQPDaloekBEED9CDUGNKlurhN+TT1mJbEb60kbe9HeILvb/j2sCc4zTCYNkC2HpKh6tt
 fmXrHbQ0Dv0SXIRrOh88P/rQPFRFvs2r7O38iSkB5ecsNBEu5l/Ionxu0XYJkDHUe4fy
 GqSJO/O+VkXgkX/FqTDUARTUAbS8y0w3Q9SCNe6HmMJAv6rBMultVllJrrtMWk24vydl
 0OjKxXpIcUZvFyB0S8uo2HI9GxLt4gYt8HSnTJHrC3EvUTxh8E2XRB8w7vg1H1qu4h0J
 t96+qsvWfoukgFBgAm8X6r4XA8ezk5phdfKuLZx3yD8vF21OVAdys9TKmr33J2U7WcIz Mw== 
Received: from bn8pr09cu001.outbound.protection.outlook.com
 (mail-eastus2azon11012061.outbound.protection.outlook.com [52.101.58.61])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 48rwdcgpba-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Aug 2025 17:15:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y/Bmz4WrkWAKL1EAH9o3lFU1uCYh5F9vHfuH5rURw8vbKWI06RlXX/kk0p+y9KCuAUjPHvfrXyR3HLous1JKoUtdKLKUostz36V7hzK+FsxRK+wkJPvBVsGS/Nx5CKJccjO59h+W2JCsCizzywBiVn4eEFUSFh8gjf8tvAqtLjXZcK3aCGOB7a50r6NmoW/d0uhD1YObpBxNdxQtCbQ6yNGSNZRD54DfCuTTTjzDo/05mcKA+zaVzj3EDzIxqKV3O1xDYeW8cNaQG+nhpBkOYIWpb67/V5ocrfx923yASSqtOzUlHdYQEzv0hupbzJn8ETZJc+RAlSGCpjDbNApNOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EeYUzz7TwEJInmZTAL0uoiK86kbwKpEJFl5WzBNv2M4=;
 b=Ztv9bfMMAGmAXF6p6YGRYp9x6M2oGtCRwD0smgdWjFRsvezDZcqCAfIoM15O3KKgct353pOSvHEFLxxAbKzxDydwFhBzk3GV1sQcM001QxmhbRKGPa2QRNP57P/Xcz6X9GSAZ1yEv584tUt1dGHi10S30zyHRH7cwzvNM3FvOVpfq0xb5IuMlJe5Nd0rbmm2DPu+2hsffNsxv2ftxwAQp/1YxrtbOQiqk8x3XUBxaYxEEHyhu1VhodltdY9VJQWEMlNnbRhbEkNXesHTHS+Rr8F9ZaMZOdhmMuLRY+Pj9HjUUapoE6TS8mpT73gvfbyj2cuUKUaucJV17msFG72gAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EeYUzz7TwEJInmZTAL0uoiK86kbwKpEJFl5WzBNv2M4=;
 b=F0w1NeiH9oj5LZBTuP7dwthhyiqn31cpoic1PPMNBMAMbCzyIdYmXypl5EMIE9r7hux3sD72Bw/2VxE96ZI/ldM4dXEhSmssGUOZS0cSBoDVySRgfa+loapDJH0Xi1nBMztV3LQIa3OSxUuddlbaRLNyFj4/irQuZcvs54/XNz4=
Received: from SA1PR09MB11481.namprd09.prod.outlook.com (2603:10b6:806:372::6)
 by DS0PR09MB11571.namprd09.prod.outlook.com (2603:10b6:8:16d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.22; Tue, 26 Aug
 2025 00:15:55 +0000
Received: from SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::f6b3:25b7:844a:6d8a]) by SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::f6b3:25b7:844a:6d8a%5]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 00:15:54 +0000
Message-ID: <5378177c-a2bf-4935-9156-0a4030903537@llnl.gov>
Date: Mon, 25 Aug 2025 17:15:51 -0700
User-Agent: Mozilla Thunderbird
To: corey@minyard.net
References: <e5a6290a-7dc4-43b1-838d-bf43edae1faa@llnl.gov>
 <aKjm7mBDQ6VR8kWl@mail.minyard.net>
Content-Language: en-US
In-Reply-To: <aKjm7mBDQ6VR8kWl@mail.minyard.net>
X-ClientProxiedBy: BY5PR13CA0002.namprd13.prod.outlook.com
 (2603:10b6:a03:180::15) To SA1PR09MB11481.namprd09.prod.outlook.com
 (2603:10b6:806:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB11481:EE_|DS0PR09MB11571:EE_
X-MS-Office365-Filtering-Correlation-Id: 3befc7be-de7b-411d-9eda-08dde435b8ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|19092799006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1Fjc0VKYTAycDhuYk9iczRveEVLazdYYzNxYTRXdmV0eC90bi81RjRhYVRY?=
 =?utf-8?B?bjFNaFlwV25rL2tna25IK05XbHMwamY5SnYwVFpRRnNiSkxKdmxmcUdhbklW?=
 =?utf-8?B?UGl5UkJ1VUF1MEpmb3JPL2R2VE5ta2ZFNTZsRDFIWVlqZ3FHYjRwY1JJeFN3?=
 =?utf-8?B?YUh3clZPazBrLzgveHdmby9yMjhyaUVLMEVvak1DeU85U3M1b25hWGlwWW9O?=
 =?utf-8?B?K3o3Tk1ZVWlxTjVXenp3SGtxNG83N1dQa0hWdDFmZ016REZMNHAyZDVwcWtG?=
 =?utf-8?B?OXZQbzJUZUl3ZEFWOEVWdnV3SlhhUm5la0p1QlZtMU5jWktVeElKZkVNSTJC?=
 =?utf-8?B?ZDNCNnA3TnQ0b0pnRmxrR2k1eHRzT2lyeGRpaTBXUHR2V0dlOFZ2V0dmZ0Nt?=
 =?utf-8?B?bjN0Vjl2bUFFdE14S3dyNEhyRjJiK091T2VZVmNzTHoyQzdkdjJHNFh0NEZX?=
 =?utf-8?B?MkZ0aEU3YURhWmtuN0tYaTVWK3RvYWx4Yjl5UmhqWlEvYzB5UWRieVdkY2Mr?=
 =?utf-8?B?N0YzNVBFZzI2ZGU4U2I0amlsdEJWRXI4amxUdUwxZXlDbW1iVklHbzFhbER6?=
 =?utf-8?B?cmJlQlo4ajNpenM0VVplaWhKOEV0ODVDc01OV1NUOEJLeXNlcjdpY3Y1SVIr?=
 =?utf-8?B?UE9KclR3NWdzSisxdUZrRzNpa3JhUVJVUHpOQ3FMTmhBeUNEb1lKK0Y3QVBG?=
 =?utf-8?B?UHlUOEZ6QjZROERCZjJnc2kzQXZERGNXaXRVWUdFNlFScTZseFkzR2RjU0F4?=
 =?utf-8?B?TktNTi90OExDcnhxdXpVclFaMW9PRzVHamIyZ1dabDB5UGdmaGNkcjNGRG9W?=
 =?utf-8?B?LzUzUlJ3aEhlVW84Ty9CMTR0NTRNb2lwOVhvWENPZzlEOXB3YXQvcXBmZy9r?=
 =?utf-8?B?WlJXbVExQlY5anBicVh2U2l0ZEZPanBWejZSZU9uWkF6bUkwQVB3WFBzM1pK?=
 =?utf-8?B?N1RuVFlCN1Z2aHN0QVFDbW92N2hnQlFJY1lxNFpoSFBCaFhUdXU0UVZHc2JG?=
 =?utf-8?B?M2crMnJhTFp6eENkTkZuY1MrbDN3RTU3bHk2UnBtWGh2WURBYy9jZTlBcGl0?=
 =?utf-8?B?YkhteGJMTkl1bjNsQlpMZ0RvLzFqZFMram8wbFBVUHNHL0ZIOFhHWkN6YlZp?=
 =?utf-8?B?Ym9MWHZtNWc5aVczY1g3dS9zdjdibVh2Sjk1YjVYQ1pQWjdaVkRFVytBSmVr?=
 =?utf-8?B?Q0E2NGN2OTNiR0g4T1lBeU5FMlA1RFVEVVFLVXo3TUxqdFRyZEc5UkUrOVBa?=
 =?utf-8?B?RlpKeitaYThBbFkyUmJqZXhSZjRlR29kUVc0QTUybmEvMndQMWlwQW5sZUNW?=
 =?utf-8?B?YUZ3eTZzMVZkUjlnaUluOXhYRnJsUFIzZitXNkVXZUY5cTI4ZWpxWGZJMkU4?=
 =?utf-8?B?VUF5eXpnRWxoTmFHYnFLdkVxWDRFUzVSaldTcU84YUxESUZrb21VK0V2UHVZ?=
 =?utf-8?B?WUpQeG9XWjQzWjZwcnpCTVlyK2xxT05XQVhCK3g0ajR2TEl5aXpTWFk0TUc2?=
 =?utf-8?B?Ym03TGE3d3FoY09jZm9JcndwM3g4TjJtNENJTk0rc05RT2tteEM3d1N5UEtH?=
 =?utf-8?B?NThvV1lxengycU9xMVpBVXRBUXl4VlNjenBjN3BjQjMzdVAvS0c2dW52aUF3?=
 =?utf-8?B?azZQQUZrR0JUeCswSjh1N3AvQjlzbjZIUVhQL1ZWTEtQRjBzeWYwaXJyTFJO?=
 =?utf-8?B?UVVCNjhMdFI2M1ovbXN4ek4vUHpPSjRINTlVUXZEUXpjS3FFbE0vVGRvMUxP?=
 =?utf-8?B?U1ZsTGlrTVA1MmVDTTZFR3hBbmlzVjF3cjVXQjAzOWluQld2Q1JBUGNwUjNC?=
 =?utf-8?B?bURMdngxeDV6R1BQSVJzaXhKTmFra2kybzhEd29iTmV2czNEZWxUSmo4NlV6?=
 =?utf-8?B?SlArVlZrM04vRHUyN0ptOVIzeXdzS3RsZkVCekJDS09HdktaQVFQYUE5VzRa?=
 =?utf-8?Q?8uG7Tw279Tg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR09MB11481.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(19092799006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjBNeDBzME5NT3BPdUF3ZXNoY1BIdUcvWmZla3BRM3hrNkNDdTdRUXQ0Rit5?=
 =?utf-8?B?Sm5GcDVGd2VmQUY0K0RjM3RaR2syMTI5TUd4SCtXak1VdWl2dHYwTzZLOFkx?=
 =?utf-8?B?NkNsRnRhSTV3S0ZQREQ1aFl3VTNPY2xQMGROZ2NwVE02V3ZtUEdkQU12Tmx6?=
 =?utf-8?B?bHNka0FreWI0ZUV4TE1VVHZQOTlSSVhScjBSeDVRc1NLZCsyb2tIS2Nxdm9C?=
 =?utf-8?B?S2pvTEd6a2NKWkx6UXltMmtELzJHaUVuYnFtZ0ZZQWNMZkdjbWN4d2syN05M?=
 =?utf-8?B?Z2V5MUdEVkpDV0l2WHVvU0VqYTJoQ3l6YzNUZkZyMjBQS1oxdHJNUmNKaFQ5?=
 =?utf-8?B?WXdYaWVjOEQzeVo2Z21YeGJtVEF5V1FOOVVxakJYNEt2aVo4N0M5RmVjMDJ4?=
 =?utf-8?B?cjJBRnFhaEFoZEVRNVR0ZVI4MWphejZZUDVmR3ZqRVp2NTAwcWxsRzd1VE8x?=
 =?utf-8?B?VWxiT1Z1QTQzWFhFN2NzQlBEUnA2bjEzWngxMkxCSklHZWtOaWlaaTFjcTlz?=
 =?utf-8?B?R2RVdTEybzE2ZzBhcGVGbW5yNU5xUEZDbEVSWFhpNGc5VkZpM1p4Z01wQUs2?=
 =?utf-8?B?K0paWW5OMFBtazVZOTBiOVAvdi8rbVJMZk8yVStKRm5IYjM4K0VwMzh4Zk84?=
 =?utf-8?B?dWNONG1pa2QvVVh6T3d5ZVkxRlIxZHYreU9mdFdpYkMwL0VTdXJEMi8wVW9s?=
 =?utf-8?B?YjJUejM3S2YweWpnNmtISlowMmp1REc5cXIyYkhlWm0yZTdrdGFhZ0JETDRn?=
 =?utf-8?B?SHhvYVJQTEtjcGx3Wm9mTUhWY1c2UlhjdGVJVTRFR01IUGZoRjQ1bk5JQUNM?=
 =?utf-8?B?NXJqSlpNZ0ZUNTVQdFZhc0ZQb3l6WXpKcDA5a0xEMlpDcTdWRXMweUtyNjhS?=
 =?utf-8?B?V3A4RmJUOGk5WmVOb0M3TmQ3cXNrUXRsNFB6Y2RoNkh1Zmw0R2paSFYzZHJU?=
 =?utf-8?B?L3FoYjRrTnU0TXZDNFNtNk1KUlE5b0hnZTlWZFMrODBicUpMMzlSQ0Z3SzJi?=
 =?utf-8?B?OWFzbXVxQmtZNjJ4TUFzK0Q1MUtwSkd0M3VaMWpYb2pJWFBEMmMrVXZXTERi?=
 =?utf-8?B?U3JmT2NNUDZSNmtHTGdqYUF1My93L2xuelZJeVVvY0xPbktRMlZhWTl4Njg5?=
 =?utf-8?B?RTBmdk1jZloxeW1aN3Ira1Jrb21Lem1qYWRTamlTamtVV2dzbnNuVUhxUWxH?=
 =?utf-8?B?RXlucWkvaTZYQmdJanAwQ24zekdKaENmZEdqaEl2RmxlMFBNY2NRbU1ZUzRm?=
 =?utf-8?B?QU5BSUIzT3Z0N1FIcXdNZ2M5QXE2bzIrbmxiaE1wMUhuRGh6Y0toTUFuYmxo?=
 =?utf-8?B?WFBHZHB3TXdGdGE2bW1xbmFYN21HUXFlK21ObGRIaGxBOG5SK2RwODVKRkg2?=
 =?utf-8?B?Z2NEeGhvcTZsd2xzajJKSkFMM1JoMVFWMGI0S2pJVDUxTGkvVVplQXYwL2dG?=
 =?utf-8?B?M1JDeGNuUXhWdTlaNE5aR1VrOFpYWk4zbW1ES1RUYTI3Z0F2S1YvdXFXdjdJ?=
 =?utf-8?B?djFPSjN2NHFBcnNxTGp0LytFYXJndEl5dm5FengxSFZub3QxNVlocmJZbmdu?=
 =?utf-8?B?SXVsNHBsZWhySFlGNnZrSHBqWVM3dTNNRVhmVnkyQXdSQ0gzNzM4RVorR2dm?=
 =?utf-8?B?SG1JaWorWDRQVmhVUC9jN0ZVcXc1c204MExPSzhzdGgrV0VMTUZNZFBkZEw4?=
 =?utf-8?B?dWN4QlJSc1laWVJSencxMElPZmxzSU5pbjFVQzlMMGFNMWRXbnhZMFJLN2lo?=
 =?utf-8?B?dFNjNXZFSDdDRzlIY1NGcHQ1N25zdU1OemFGM1Z3RGxQNjlPWWRFV2phMUxH?=
 =?utf-8?B?dW5EQldUTG1YT1hSMGY5MCtzMnBIZU53Y0J5Tjg2ZkNKWDZWY1NPZzQxZkg1?=
 =?utf-8?B?bTZ1aW1sdllvTGJhbE9tbEp3Uzd2ZFl3KzdUakhreCs5VmU4U094QUdwNTFM?=
 =?utf-8?B?TnVRTDBUOE5nVmRxa09vUjBxdkdha1M3REtTUTRMTGNnbGo3SHF4Zi8vamFW?=
 =?utf-8?B?UFFYMUxkOHM0YmE5YUlnc2o2YS9lb2t3bTdCakdLRlI5Y1NocGVVQ1YwS2Fo?=
 =?utf-8?B?c3RpZ0VieHhCSHlPS2xpSEZkdGx0dDNpN3gyckhKQnZwMzVybk8vQjg2UWZv?=
 =?utf-8?Q?YuUl0Tz5DhJQjMt88ZPVGoDEg?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Iv3tQylizxx5XFBKg9nURqbwOP90EdaPwkgWOYa4n+bUOqbL4QL5VpjUtbQUYLT9N73lQAe+adWCLteqaAQ7dLQ3KZJhMt1arcABFezPpvefRHdaEYSH29Cbt2Vt52zqSzmewhSDckKzH3Z7w+2lGmzs52cRnTbm6lh4akm+Vt77363YTXcWlSJ0nd1f970p44hbwP7KVLDZ1isEIDTzMnmoYeoHpgvJUosrhz0FwIeYgyBNw45NzoLRnjj/xQ+vpVoQmSxDZiqH1JmnMcpw3YBWZwCiKyJ1F5YO38CERFdK9P2obBCyJr10g3t0fn4H6iqFnN/8U53ctcnSyNfNLBR1x/+LM0byO9zQ3S/wDJ9Ou83QbiARzxkVEnoba+a+RODJjbQsEdp5fr/715au2pF1GDCQWcHV0DwjRseOJk+hL9wGHCxPAJgjkq2WpTaEm0NpPerYmybbkVVbZBuZ2g6T7XHx6Z8Kwue7X7Ra44ZIp3mYgepeGK4K7S0kpRyLzOf0oUDE1VlKSYvu+y3J5pvgVyUcZM9JDCA0JlODoKr2fpMOMiUyNs5It+QXXIw5A4JLlhRwdl8NzZ0sje7YjdQ/KnAkvQHk/CBXkmTAVZ00AIq+DBrZvN8xjAykn0fBmgzSf+pFyLW7ZOtoigEBWQ==
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: 3befc7be-de7b-411d-9eda-08dde435b8ba
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB11481.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 00:15:54.4620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR09MB11571
X-Proofpoint-ORIG-GUID: XRAg4zEVZJg2cxWup8Ewt9JZj6DQFitE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDAwMCBTYWx0ZWRfX4uNiGFYSRoHS
 6Ydc4xEEceZEI5f8GiurRs/o/7KdxSSAt8uY4GOfjhb6DMAf21ms4q+wcNS6cANQ+c3UHN5EY24
 jcy4HW6sBgN0JRdUU8fhh+IC0uWyGZUV5CsD9UObg7iuaCr9F0NZx3Ee09+U2XbNjK8hoFSdXpx
 cQ+Lr7f3PHi8tp+WpCAKY5JRKywPiw5Bwn2wemrMtLbnv6AAG9UfJ2nXRuxgV5H+iyL9FY3YAbp
 UWcMGrLwmTon/5Ntqyh9ONbi/i2XQZVI8s26PhhkyQdO3jJj49YedKDGTeVsiIQIpJXSLxlOPj0
 +QEqeteRmoyQIicn4UNMrEPOitscxfNd4ivIJVBPFe8UctFrCx2oqEtVjwRPSN6mNvYLXZ8eRjR
 mMDo5A9I
X-Proofpoint-GUID: XRAg4zEVZJg2cxWup8Ewt9JZj6DQFitE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_11,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 malwarescore=0 impostorscore=0 mlxlogscore=611 priorityscore=1501
 suspectscore=0 phishscore=0 adultscore=0 clxscore=1011 spamscore=0
 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2508260000
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > You shouldn't need to include ipmi_smi.h. If you do, that's
 a bug on my part. Thanks, you're right that it builds without ipmi_smi.h.
 I'll remove it in the next patch. > I don't see anything that will prevent
 multiple messages from being sent at one time. What happens if two things
 send a message at the same time here? 
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.5 FROM_GOV_DKIM_AU       From Government address and DKIM signed
X-Headers-End: 1uqhMQ-0004dI-GH
Subject: Re: [Openipmi-developer] [PATCH v4] PCI: Introduce Cray ClusterStor
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> You shouldn't need to include ipmi_smi.h.  If you do, that's a bug on my
part.

Thanks, you're right that it builds without ipmi_smi.h.  I'll remove it in the next patch.

> I don't see anything that will prevent multiple messages from being sent
at one time.  What happens if two things send a message at the same time
here?

That shouldn't happen since the messages are serialized by craye1k->lock.  That lock is taken at the driver entry points: craye1k_get_attention_status() & craye1k_set_attention_status().


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

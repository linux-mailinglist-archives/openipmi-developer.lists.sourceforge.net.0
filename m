Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD517A005B7
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Jan 2025 09:22:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTcwl-0005oJ-Rj;
	Fri, 03 Jan 2025 08:22:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1tTcwk-0005oC-Sa
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 08:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fMB4w7qR1Jv081sOmf7GDPF15nl4XhjkM/0JdYUPAfc=; b=JpnLqzP6210PXzy/EKfNOs0EqE
 kJQrbuabtmNvu7n9stx5E/8A6vEm0ju4pu864wnFuIykDcZv4BhmaRV8zIUJtHXw7NzZ5S0pTWEwk
 rxQPokudVtsC0iPuK6WGXrTjj3zGm3S6k09x6HB2YphaDu5llnRyS1WESvISOAz3aDJc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fMB4w7qR1Jv081sOmf7GDPF15nl4XhjkM/0JdYUPAfc=; b=M+8Zu/zf/9qhPHH+ulnRzcqmEG
 IWV5ePw5bD+jBTt+EemKD4oqiwESqrBtMDNOqe0FIpWCT1C6z7+e494P9fFBfd/bs1o6NQhlZxU31
 gn0a1M+VLw5UewJkaxJ4bP8rfXFeZrSjdgGqD/NHp2sIy2AQ+Eo6HUsneO5aM62G35wM=;
Received: from mail-eastus2azon11020113.outbound.protection.outlook.com
 ([52.101.56.113] helo=BN1PR04CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tTcwk-0003bW-6H for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 08:22:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LX1YaiTvZ4/pZNJWmWwjIct+ZARcBsjJeDqteNWYwh6VSif4wiE+M4Dyn3UX/cFf9rZ4PSwnU83m+7V6jgGWa/L/R1X37fvcFuTlIWUQ5w5+CKUxQlC2ireChj15ZKn2NEHdqyVLWKYtlYWTi8dUKIh7eVG+TyXBHKU4Mal29P1AS6+s78cJi4XsM4GASmVXZX1hn0nE/RAzIGzD/H8Y2XMlI8Nb9LvMSrA8paaIYHHSxgvFkHIZE3K8mDj0ZFELjOfDffz+/PKTcB3SW+Y1hys0sUQ8OLa6CQck2NkIj4cJil0Gim244EXkvE0VBxllnNvNiWOLZG4HyXA/VsG/NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fMB4w7qR1Jv081sOmf7GDPF15nl4XhjkM/0JdYUPAfc=;
 b=k5AFu7ng5flYalp1+ZJzhFT+6K+7RZNMzgjwnjyP8cKJJCn0xSgxq3xOJaQng1Nqs6qxflvjBd92F7Ai3f6XB3PAVkcsFzp9S4dr3PrEVziMrVUaCU91xcCTF5VI4coYDO4SLDvcUy4yVjzkdZPDUgUqm/GXTBK09nrW1l7S6qIWK6yN+BMG6g/b0wlUOdOF3EUSmJF9OcrwRnBYxbRmWWC2VhE5/DW/+gZrKQamh6o8doD+3rSQ+5UZsoKG3G/ksZx9VmCUhhixKTp6+n3OxiF32dI3nHBHz7xOp24N78Dezli7RBOjgkPm3YC5Zlb08j4z+IGGNriOnKktlREy2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMB4w7qR1Jv081sOmf7GDPF15nl4XhjkM/0JdYUPAfc=;
 b=ZxEJE0xu0dAuRY0tDFZp3gFwgGpVISGd3bg82pa9ZpPpH7+TvC2A3AoxvlbJnnDYUx+kA5NPp7DH4n1dzgKLFmyb4PZjJzUiW7RAccVbsTdcrTqBeQZZu6Mxs6ywfngxSAMA6Y8BvlF/SPjDIVZTSP+wYHfXHZuPlSRbCLFGhBo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ2PR01MB8193.prod.exchangelabs.com (2603:10b6:a03:4f6::15) by
 BL3PR01MB6835.prod.exchangelabs.com (2603:10b6:208:350::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.6; Fri, 3 Jan 2025 03:50:10 +0000
Received: from SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d]) by SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d%4]) with mapi id 15.20.8314.012; Fri, 3 Jan 2025
 03:50:06 +0000
Message-ID: <12ed4d01-9fe8-4d2b-af5a-fdb0ebe38bf1@os.amperecomputing.com>
Date: Fri, 3 Jan 2025 10:49:59 +0700
User-Agent: Mozilla Thunderbird
To: corey@minyard.net, Cosmo Chou <chou.cosmo@gmail.com>
References: <20250101165431.2113407-1-chou.cosmo@gmail.com>
 <Z3dXaMlZ1zTt5HHd@mail.minyard.net>
Content-Language: en-CA
In-Reply-To: <Z3dXaMlZ1zTt5HHd@mail.minyard.net>
X-ClientProxiedBy: SG2PR06CA0244.apcprd06.prod.outlook.com
 (2603:1096:4:ac::28) To SJ2PR01MB8193.prod.exchangelabs.com
 (2603:10b6:a03:4f6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR01MB8193:EE_|BL3PR01MB6835:EE_
X-MS-Office365-Filtering-Correlation-Id: 390ea50f-06d0-44f6-aa0f-08dd2ba9b627
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEdQM0NONk9LdmplZ0dYZ2llUi9QNGcrUmxQN01xTXp2UHhOLzhUQVE2VjFK?=
 =?utf-8?B?VHhlL0lIS2Q2YW5lZ2M4ZEN0WHlUYStsT1U2R2EwanRjRXdsR3lJM0pGVi9E?=
 =?utf-8?B?NzJ0dmtkNGdkQjBxckFGT3Roamk0RldiOW9rckxZM2VTUFF2N2lKM2svWVdi?=
 =?utf-8?B?RkRvYnRNTXcvMVUwUUpxU3pDTVQ1Q1cwZzdMeUN0c0w3NVN2QSt6VHN5b2RR?=
 =?utf-8?B?QjdsNkxnbS9tc2FoaWNEV0t4V0JZRG14RDNKRFoxVnlpMCtSWUhIYlVBUVha?=
 =?utf-8?B?cFNjS0huMUQ1Rk4ydmg4aXBXTG5haEZWRzVQVzgzMnk1UGpYY1dOWGcvYXZV?=
 =?utf-8?B?aEZZOFVPTC9JOTFDbFZuZk1aWWVwcUJ3UzFVLzhOTTZzRXdKaHBUVlcyZS9t?=
 =?utf-8?B?bEdlc3JaTVFCUkZRa09tT1JwbjFzN3Z0eVR0d0k2QjM0K3JyNUJmUnVJdmdM?=
 =?utf-8?B?c3dTRFpSL2w1ZkRJWXU1QmNtZmE1VklMNE92YTY3QUZZK3VaMUJCODAvK0JH?=
 =?utf-8?B?MzBCMXBHR0dkWHk1cTBvRTNiei90Y3FzSnpKVkhnNjVROW9DaUlFc3VXOTlK?=
 =?utf-8?B?NENOTGtCQmdVMDBBVHplQWliZFVSM1M0VEJRaE5TbDBxU0VKdlhnek91eUJk?=
 =?utf-8?B?c3dIa0xxZ0l5Z2diaDBqWm5zR2cwQWlwbW1aSlNoa2ZtVFNpSFhyZG43ZG1M?=
 =?utf-8?B?RnhReEd5QlVQNnRGVUlwVHlaNXJjVDEvZnZVbThtSFZoYXVNMkp4V25HcUl4?=
 =?utf-8?B?cjRCdVlZd0ZkQy9paVR5SmJkY1MzT2FoNEdHbXhxMnhQamp3ZWRobHRmTU1P?=
 =?utf-8?B?L1ovcUxMQm4rcm5UTzl4UmdBWFdoUXoxa3hHRmRMQnlUQ3ZjMWN3ckNJMW1y?=
 =?utf-8?B?YTBvRFgzZStNWVhKdWh1blhiQ0J3a1lidHltMTVYbXJ1YmhFeGNCb3FDMnVn?=
 =?utf-8?B?KzRad3BjOUZuSHlMVklwRVdlUzBXbFlrMjFLVmJWNDNIdVUreWlUZmhHR0V1?=
 =?utf-8?B?bmdKT0tLUVpRMGZieGlHOXpsdDU1b0pFK05yVjZ4Q1hPczNObm81SUMrMGVU?=
 =?utf-8?B?MS83UFFrWktaVEsvRnZYcndRcFgrbDJSOGVFaDlERVJjTmZ0RTYrUVl4T3l2?=
 =?utf-8?B?TkFBTFREWmVTaEUyZ3RwSDc2TS9GMStia241Q2JBUE0wdHc0OHE1Y1hhTkZ3?=
 =?utf-8?B?Y2NzUlZvTnJSU2NCeVVWTnBkN0hQbHhGZGNtdUxLcmU4dXVBWkVwdmYxcGtJ?=
 =?utf-8?B?VldicVhTd1N4WVVackpQRkVMSncya2s1L3VSdytpeTJNWVVtVU9ndWFWblMx?=
 =?utf-8?B?aXQ3cDJyY0xwQXJ1cjlQL1V4QnJ6ZE5ZTGxnY3NMeW1uNkN1RGZmS1pkVXNE?=
 =?utf-8?B?S3NCWUJPVkwrS0c0N1dzbkFsSWZhQ3hkcGVWakFqRi82WkJrVWlPMDVBVEhK?=
 =?utf-8?B?Vm9QdHp2SWsybTBqZEovaS82b3Z6Nk1GS2tJaW5nVXl3MWV0WnNRT1loS1Z3?=
 =?utf-8?B?NUJFSmpuaFQ2N1BFZ3pwT2tWQ00wZlZaU3NqaURoY25YK2FNRGdYYUFYUzVo?=
 =?utf-8?B?QWtyQ2xlcENObVlrdW9Odml4UzVSVjRGUFpRYUEzODRYbkVTOVp6bkl2T3NF?=
 =?utf-8?B?UytlNWRPeGdxN0VUcXhGdG50R2Z1aG8zaTY1K283NEhMYXc5YzFzNFlyTHZD?=
 =?utf-8?B?OEZoMVdNWk9uelphcURSZUlFSEJGc0tVL2J3SHViYXRGU0ZuZlRtZlR4STFN?=
 =?utf-8?B?MFI5WDBhU1p4SjY3blZpMUlHdWtWUk5KRzd1ZTdqcWVJZUJDM1p2VVkyb3FK?=
 =?utf-8?B?d3BVNkhDOFFLWUJySG5hWHJFOXdlT1RzSndnYW5wV2d6ZFBZL25NNGZQUmNL?=
 =?utf-8?Q?LCbNala6MGU11?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR01MB8193.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TURzMmNPU3liLzJiSXF3U0plQ3dxcDQydWdqU0E0eVNTOXJBc1Jybm5NZWtL?=
 =?utf-8?B?TW9DVVFPUTdxT0QxcnZocng1dk0yQjZWNUI5ZDNseVBTVTcrMm5za2NKb2VW?=
 =?utf-8?B?QVVpUU1FZGxCT0RWaWN0TE94enM4Wmw1V0R0Z0ZPQ2RtbE1kT3U5RnBDRzZV?=
 =?utf-8?B?VXFLZUd0cjJNRHJ0Nm05RUwxTGNtYVFxWXkzZTQ5RHN4b1JXK085bUt2b1RK?=
 =?utf-8?B?eDRlaGNOMVg0bjVXMkFWR3FqNnh4SG5uZk1kaDBiZjRXeUdzZ1lpbHgyaEx4?=
 =?utf-8?B?Q0c5Y0YrWVd0VkRNcUg1ZFAvVk9IamszNWFtZEpocVZjcmVJdW5JYmZLbXZG?=
 =?utf-8?B?UENVd2tyZWR1MTUyRW1yR0E1Y0x5K0pHTDg0aUUyOFZMZ0w2UWNwT29iTnlO?=
 =?utf-8?B?VTQ5WTV0R2c5L2J3QWFjaTdwMTB6QWE4U3BBREJXMUwvdG1WUVJFK1dKYStm?=
 =?utf-8?B?dWVvQzRZRUJmdkdEWGRwMGw0MXBLcFFCdnVuL1QzeFc0ZEh1QzJBOHNVMlRS?=
 =?utf-8?B?TmNoODdLYnFGdG9sanI0a2tvTldJbW9KTndRWVdQSS83UTV3NHlUR2VVWW9H?=
 =?utf-8?B?eHNOQStVY0ZFdGJWUE5yY0pPS3U3VVU1Tm03MTNLSm5rQnBrc0dmU1RTdVdh?=
 =?utf-8?B?M2o1VHVWWXo3SDhQN2R6NkNONWt5MG9PZjRJT0hPejFJMHB3WHlKZE1TUmlQ?=
 =?utf-8?B?QmtFRGJDbmYwU2NxalN6RVFBbnhtVTFmWTFZU2NjaHJCbHM2bEdYbkxiT2Ni?=
 =?utf-8?B?Ymw1Smd6bTdYU0hFVC93dXdrSEVJZ0p5WkZzOEVjUGtXUjVjaWZOY3VGbFFI?=
 =?utf-8?B?M0NqVlVGV1JrTm5jdDJoYVdXeVpUUms2NHVlMjNrM2VQRGxUQXR3elYwMTZC?=
 =?utf-8?B?c3ZJbW1FTjZVTUxacVZtMHY2cG1aZWpHT1NFT1B5QjU4UHNpSTZ4elVvZHRT?=
 =?utf-8?B?T1p6YS9BMC83eVM1YmJWN2dxZDJnWE5YWXdtSS9xTUpuay9naXJ6Yit4b0dK?=
 =?utf-8?B?cUZtaHQ1dEd3aVNNOVdRdGlWYzRkUVFucGNxQUhpaThZQ0N3a1M3eFRRa3cw?=
 =?utf-8?B?ZHEvVStnTVJHTzlVRVh6Mmk4Rk4wb0wvWFZQTERGZmxLaDNVdThyMUJLbWZR?=
 =?utf-8?B?UWZTNFFwRlBjMjdmRDUySVNrQ0U0SUFhaksrQUFXNTBsRXdYa0FMOWxDZ3RF?=
 =?utf-8?B?YSs5ZE12Tm9KbVBHcHVIYWtPa2hUQ2g3bFFGQzhjQW5tWnpyVTNxVHdMY1lN?=
 =?utf-8?B?OUlUUkZsL1QxOENNMkxXa0hiamhYaGwwcGxwbGh5NXRwdk1xTzJOKzFOamxR?=
 =?utf-8?B?Y3NYVFZSUEZVQm9CZklTdGpXdEtlY3ZINHRmbXdHWjRvSWRPZWEvMmlheHJj?=
 =?utf-8?B?M1FyaXplbC9qWENtUHM5TnpxMGtzLzhKL3BHMThCMHE0SnFNVXJFOW1KYnl4?=
 =?utf-8?B?TXFyVGd1RnhWTXh0VVdGY1hFODIwbUJzRmk5TUtZUFJYMmpiem50NG5WM0JJ?=
 =?utf-8?B?TWlpNkVseVI5cEFidGhxcDZvSlFhaXVza3pMZXdSOVMzQXVtYmFiR0I5TFN1?=
 =?utf-8?B?enpKbWV1NlZqQ0RzUnRTanpnMVNucm9EeVp0WFpoWWJkNmM0SVVGMXJvaWpI?=
 =?utf-8?B?eU1HK01TQTlVb1dYSE8zLytYL1FnUlIxWnA2WWEwUDJhWXFYMzk4ZE5obUM5?=
 =?utf-8?B?QklBUi85OHNDLzFXUDlma044SWlYT3FtQTRWdnhCYlFGMjZveWtUbzBiTC9y?=
 =?utf-8?B?K2F4OWFkWWZPN01zZWw5QjF2MnhJSjBBb0xJdkpMMlV3OGZKaEt2S3FqM1hn?=
 =?utf-8?B?KzhkTk9NUmJkZlRjNk1YRldyZHY3TDVDNW1QRG9ubTVBL01lcEo4eDhpdEhz?=
 =?utf-8?B?SGRNYUtCT0lEUENqdW1hUkhFTktPQTJZY1JOZjZkd1FsODZWbW8xUTJoK0lp?=
 =?utf-8?B?Qi9DWGpjbkdObkpmSUIya0J4L0h4bGRJZTBtMXNwbWtrZVNOK1Jxa0dTc2Y5?=
 =?utf-8?B?R2U2ejJKNXl6M2xDSGNWa3FIYU52RUtiWXBiVmhEQkkxWm55ZDZzdUxXUWdR?=
 =?utf-8?B?ZWRiSnB6OUkxNWc5L0VSc3BTTzg3NXkvNTAwa3RiMW04eHYzUDlEbzk3UUcr?=
 =?utf-8?B?UU5qVmVPZlllNllvMWRCVUl4WXZURnczZ2xPNHNTeWxQVi84UmZtQkgwK0xa?=
 =?utf-8?Q?Crujvn3XOrWNH4xj24Ck9gM=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 390ea50f-06d0-44f6-aa0f-08dd2ba9b627
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR01MB8193.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 03:50:06.5491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +wJBvWiWAMDhg9bz+f3utoHmYPhhZVyqRot9AwrTmKLgYDQ+LzhHNsINk741bC038ZBwzbrLhp4bEYu23HQ8Gap75Wra2saEPMCALbp4WA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR01MB6835
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 03/01/2025 10:20, Corey Minyard wrote: > On Thu, Jan 02, 
 2025 at 12:54:31AM +0800, Cosmo Chou wrote: >> Move smbus_cmd assignment
 to the end of process_smbus_cmd() to ensure >> the new command is n [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.56.113 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.101.56.113 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.101.56.113 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tTcwk-0003bW-6H
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
Cc: openipmi-developer@lists.sourceforge.net, cosmo.chou@quantatw.com,
 linux-kernel@vger.kernel.org, minyard@acm.org, potin.lai@quantatw.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 03/01/2025 10:20, Corey Minyard wrote:
> On Thu, Jan 02, 2025 at 12:54:31AM +0800, Cosmo Chou wrote:
>> Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure
>> the new command is not lost when complete_response() is triggered.
> 
> Ok, I see, patch is applied.  Thank you.
> 
> Quan, I assume this is ok.  Please double-check it for me.
> 

Yes, Corey,

This patch looks good to me and I think this can be improved a bit 
further in my reply for Cosmo.

- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

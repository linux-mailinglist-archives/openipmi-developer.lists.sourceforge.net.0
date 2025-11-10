Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 701C1C49DDE
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 01:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bq29xv+PngKPdJj6Al4I2djXqR740vDNXS5e4t3G8Tw=; b=MXoXhVdSUrI1sTOj4Xccs9Ht8+
	Xv+KM70jpK+2FsmwkL4dWfzB3BjfsMHjdGT9BhKOyEEdfzyJxbh1t+KiEPmDehr4HStpa/C/BGp0Z
	nAjQzbesvUbsSeIDkpIh0rHF+lAHoqIzKjOqEwZ41JOHu/O1Olex4lmyCLKogIzvlAYA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIcGq-0005es-Rb;
	Tue, 11 Nov 2025 00:30:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Christian.Koenig@amd.com>) id 1vIYlR-00047h-5S
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 20:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ds8RlgZCMIh7tgikiJZrhQimtjkj19bAiBDZTbbfFMs=; b=AR5xOixSwVV+hnZen6onbclEw4
 epj6T6Ip0M4ZBGmUVuACC47M3ZH2ODcMN6MA+Ut3+FPyZQRJ2LDoG7+4LxHm6P5nq7P3PovY9MPxT
 VaSbs2hvZJZd3sPusRpgqze0rge2aJAH6smkS8lOeFrnMa2nfUz1m80euiijq1HxOpbw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ds8RlgZCMIh7tgikiJZrhQimtjkj19bAiBDZTbbfFMs=; b=LHSv/j0zsNrjhRgVjdEweG9gpG
 yvp45BnKJurXahz9R47FUGhvP2Ngir55CcgJwvGix8MSoXh9w4QxR3R68f/GoVu21BCSMLOaS1Y3t
 qf2OnNr1V9WTO82oJdlrQE7tDmKJb27FBVafaoqOGq7olUOVKG+ffvueUD4QCpKeAreg=;
Received: from mail-eastusazon11011065.outbound.protection.outlook.com
 ([52.101.52.65] helo=BL2PR02CU003.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIYlQ-0008Vo-L5 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 20:45:25 +0000
Received: from PH7PR12MB9173.namprd12.prod.outlook.com (2603:10b6:510:2ee::9)
 by MW4PR12MB8609.namprd12.prod.outlook.com (2603:10b6:303:1e2::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 20:30:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FafjJx6xILubSlJq5P0FPhIDqZgjBNW5jz7hCysvRpMnqmvFGzdQHMn9i0tOWTrTXzaURNY3OqXHhseCEKapKpwYGvcI+xq5u36fFmhqgxgQ2s89TiItFYW10yHtDNvrFJ4zr4Vr9kwLRO24ZJngHrguYK7Qzdgm9vRII6DyqUfGS4E1ffSfVgtNnUmXSmvM2V52nDZvcOwwwy2HwMkBjkYgZToGG2Pw4zyrnifaqiRidKHez4aA8uiTu36Gq8fefR4ktz8P7OhSzdErFMgip+E1UySiq/fE+xFlyIBWAm6wDfzBVELs5dm3kETkkKZtz8yfKwf1DfE8IZRPJ6ZYpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ds8RlgZCMIh7tgikiJZrhQimtjkj19bAiBDZTbbfFMs=;
 b=K+CGPWWfslxszOVqxSk92VbP5Y7r3J6K8mEMpWuDcL2PvS6q3OADZAYWGqo+Qp1dTn/CiorCr89XpbVw+BQhw0W5V2ZJFUn9Ka4wSvA9oXXVbynN8RJ0Xt3wdBOkMgL83RHnMrmPfiR8V1+1j6+NrHX82eSNt3YulJDTHgrgcExLPNUb6CUpDO2jddRM6SIye8vmpQUgh0CnKvyJSDGXF/Pta2MPG7qreKB9+I0+gVieaXr7mBisMuKE6GsrAjpIJQamz84wtMf9s8RvuNohlLyQ6CUpnfpY9wRnl3ALLKM9qbaurD8Jb1B1qM9CUZlYhy/CQkTxi98rtap3Ugibow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ds8RlgZCMIh7tgikiJZrhQimtjkj19bAiBDZTbbfFMs=;
 b=T47Hqr/4sHqR+61eDYw0N/41Vs9Lwli85vXbuXhm9PnMEZQ6DDlivSvJ3iDEGbZykO5ldDl+IFUkCikZNff0n2/1CX6Ee8i2WdeVUhHAie0/UPrXL3zDI71gALGRjmd5j4H3qoClMMY/9LDA9j+H8xuV3SHcB9M9qd/7IxIvZt0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB9173.namprd12.prod.outlook.com (2603:10b6:510:2ee::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 18:50:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 18:50:33 +0000
Message-ID: <0c9e0534-027d-4875-8631-a91b163b85dd@amd.com>
Date: Mon, 10 Nov 2025 19:50:16 +0100
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Corey Minyard <corey@minyard.net>, "Dr. David Alan Gilbert"
 <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>, Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-6-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
In-Reply-To: <20251110184727.666591-6-andriy.shevchenko@linux.intel.com>
X-ClientProxiedBy: FR4P281CA0024.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB9173:EE_|MW4PR12MB8609:EE_
X-MS-Office365-Filtering-Correlation-Id: e4a6efb7-0b8b-4c26-3e92-08de208a0755
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZC9xUWVzQ1RLU1A2a0pYdXdyYk9BRm5BTkUrUk9MbS8zbXFxbVBrR2d6OFZs?=
 =?utf-8?B?SkZoRkxRUDdmeXFtU05hR01YMElwdGQxT3JQZjZFTXJiZFB5N3p3cEtMZmJn?=
 =?utf-8?B?MUVMZEJxUDVwZEYvb1I5OXlIWFZ1ZnlZVUFUaVNYR0tMMFhmM2RvdVRnanJM?=
 =?utf-8?B?UGxZcisrNm1pand0TGlYZnRPOGZzR1ZwRzFCSThqMllLRXFkOTZKYUxxZEha?=
 =?utf-8?B?OEk2UFRkKzJWVU56VE1JMmcvWDhJMEU5Tlo0bWFEdXdSYU5xSWVrMCtOVUhW?=
 =?utf-8?B?ZElBM2tBTnpPRVRBMHkxbUVFeDJha29HRUdxR3RURUJlam1vVlRuZU44MldQ?=
 =?utf-8?B?NkFETmNFNmRIOWJqVDNqMlpRT0lBcjdmSi8vQURJdjB1b0MreDM4aDJPbWp4?=
 =?utf-8?B?Zk4xSzNtUTYwYkMveU4yUVdnUEE0TUdNTzgrUUF2dDZtc1d0WnZkUmpaeWxP?=
 =?utf-8?B?NC9tS1JJUkQ3Tm1FaTl2U1FkeW1INUR0SEJtMnJVdUN6QlFzRk9DR3RQYVZm?=
 =?utf-8?B?UG9rck9QU21tOVZZNTNYa09vS1FsTTZQOWJsRGdWQ2VkY1N2eVlnMEJLZUgx?=
 =?utf-8?B?b3pQdnVMRm1ISXZQWDdEZmNGYlpSNXF5OE5uZDNtdCtPdVpIOVNkeGpSNFZ1?=
 =?utf-8?B?OWFxNmYvQUFSUE5tR3BpdU8zN2ZxcEVRS2pJZXJKRElobDVvb2RDdjVzSXhB?=
 =?utf-8?B?TWxMOE1UeTRTeTAxZWdNQllYMUdlWnQ5cnlKVXVlWGV5cmtndDlXYURiMkVF?=
 =?utf-8?B?a3lORkN0SytMWmsySS9ERi81QU5rTWl1TERRVE5IbEtacXd4S0t6UUtzNnNE?=
 =?utf-8?B?dm9ZWHJDaGlxSmVWdDhvck93WmRiQ2hzeDRpV1U2clEzWkFUY1pLZXlsblpT?=
 =?utf-8?B?QzFFNlFISjJwUzBKYW8xTi82bGNPTzZxQUZxM1VtdmY4Vzl2aFV3eWpwaGZu?=
 =?utf-8?B?d1grRy9MRTMwb0xUNjMwZjFleHZtL0FhMDVVMTQzVTg3NDQzUWFwMmVVYUQ1?=
 =?utf-8?B?SlpVbTJQNjZ0QUt0eUVUUFFCU3QyM0J5dzlUdWhIQjcrZ2VEdFRtUEJDRE5J?=
 =?utf-8?B?bHo2Uk9tdy9TN2RkN2MwcGQyemZzUnFxUHBSM0VMbmtwK2w5TEtVaDRxZE02?=
 =?utf-8?B?NlBEeHJoZHgwZkdwREhSOEZjQWFwOE9qUGdIVEtqRW80NDRvUWsyc3Z0VjQv?=
 =?utf-8?B?bXZGc1R0MlRCTXFCL3hPOXd6Nmd1SkdQbmFCV1BxSSsrUVFqeCtTUE5PdURV?=
 =?utf-8?B?NjdXa1hIMWR0QjJNRWxVbGlYVHQ5eHdNM2JVSFFiakgxQzhCdUZLS1pkbzB2?=
 =?utf-8?B?dS9vM2s4TitHeXZaK1phREcyK3p5bTM2bjF4TGkxdmlYQ3A2YXlkbzJNenVP?=
 =?utf-8?B?YklBY09PTGFXOVg3THU4SDRvN2E2YnZKMGszNG5KNS9TWGl4ejRCSVI2eUJw?=
 =?utf-8?B?QmdNQ2NIa0J1MVVyUUdDS1RDMkJybFIwem0zQ0hBbUJ5WHdTRVlmYkQwVVdI?=
 =?utf-8?B?WE55YnVmQlo0bzlCc3RhZkJ2UTVuT0xxNjBDYXc3MkdleTVwbWx2cjFieVl2?=
 =?utf-8?B?djI2YUpTY1o4OG9GemNNbkoyU2FXdlBkNVVSeDJPNloyQjRITWkvOW5XcEVq?=
 =?utf-8?B?d05PVEdrYUZzL3lpaGU0MGJCUkZoWkN0RExJVDUzQ0kxc1gzZUtTUEJ6YWlo?=
 =?utf-8?B?WVl3aDJ2TmwrcmE2dVlCUTJWdENhSXpSM1FaM1hIY21PM1Vzd3F1cE9mTlNK?=
 =?utf-8?B?VHZBSUtPZ0szY3N5ck9kR1ZwQnoveFFJVW9tamw2MlAxbVNRRGVoQ1dJVk9Q?=
 =?utf-8?B?REdia3ozZm80N0xRTjNzdVVBQXRycVZPbTZLbG1sN2tEZjRoWTFLVDlsM2pY?=
 =?utf-8?B?eHcwWU9zV09nQm1ZbC8xY0gyWXpiMmcvaUJtNzZDRW40RnF1ZWR2dGtLY3Bn?=
 =?utf-8?B?SmJPemFjVjNycW5idEJyM0VGUUcxNjltaExFQk80cWcvbldjaGY1dVhVZjcx?=
 =?utf-8?Q?x8liTAVBRqk95EvbXo2zcYuGiBxX90=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dW5TbHZWem5TcDVpZnlCc2R1elFTWk51OFVoLy9NY0Y0dWdFVFQzNHdONEdM?=
 =?utf-8?B?dSsvVnhSaXdQYWJvaEdVWm9FdjVpUDFIaTBvcFlDMFF3ZkRqTUYzaUlXMWs5?=
 =?utf-8?B?amQrbmg2VFg1ZTVsUFJCaHVHT0t4TTE5SmRjVERkL05FT2VHV0lRWi9OUHVp?=
 =?utf-8?B?Uk5DTUQvSHZaRW5hbjhSd2t6ejBoa0trVWc4N0swNkQzTGx0bzhXb3AyMFAy?=
 =?utf-8?B?OXhFMXlkK2JXYStmZjJ1c3JYTDdrMUVVdEpSc0sxNnFLQU4zQXA5QmRhTjhT?=
 =?utf-8?B?ZmUxbGZkd1d4c3R1VmJNZlcvaEQ4Z3QyRGRDVTdMRWlvY1pJYkJYMk9aZlp4?=
 =?utf-8?B?eDFRcXVSMjNYcnJ1bTM2MTlCU2NrK3JIUGZQUXgvbVhxTTRJUml1eitNQnBt?=
 =?utf-8?B?RlY5Qi9kbzI3RG1wS1dOaXpyUEZsUk5qVDl0WGRXSldNT05rdkYyVGhZcDZF?=
 =?utf-8?B?RXovNkU4Z01mK0NtUlhBb1VNVEJpZ2l5R09aVGJoWVc2c0Rjcm82TTRoYTll?=
 =?utf-8?B?WWsxS3BEK3dpUnc2VXFEZ0JHSWJ0eHJ6SEhtNitOaEVORnQwakhTMEV6TE82?=
 =?utf-8?B?WDZhSW5Ld2NwTi9USFJuZTBXdkd0VGlMVkl3VnRnNlBrRWlYMEpocW85ZDVa?=
 =?utf-8?B?cS9rS2lQM2NUYU5zSHBjVCtlTjBSdG1nbjZJeUZVYjNrNXg2eEJPQ1dqOTZu?=
 =?utf-8?B?enhIYUI1V1pjaDhRME1idHMrbG9XZUpBRWtweUUvamJGWmQ2L1I3MkpnRXQ2?=
 =?utf-8?B?RWlKSlMyeWwzWkdSaWZDWU1RSE9UTGJ6bmtMaE5BaHM5SU01cW5ydGFyTlFa?=
 =?utf-8?B?cDluMjFCa0g5bThVb2xhZUgrVkprVDdtc05qcS94cEtodUlGZmJlaFZkMFN6?=
 =?utf-8?B?cEhJc0FWRFdGelk2S2dQaEpiN2tZYUxCMlh2Nkh1YkU3TEFPQW5QeEh1VE80?=
 =?utf-8?B?cTlLaFYxeDNaVWw1N05CaVc4eEc2dWROcVJGdlQ4MVZFWWw3dndqVUxRUkJ6?=
 =?utf-8?B?MGN2TXN1dWFZU1VNWXV2UXFqSDFMK1NuaE9OQVBrWEErN0cvRXBNbnBmSjVJ?=
 =?utf-8?B?a0VId05DQUVIZVo2bkVQZ0drNjVLK1V2YTFIOGV4MjZWMndRUytaeEdQUWtm?=
 =?utf-8?B?a2Y3bldQVEZUOGJEUUEyeExVeHRwTStuREMyYXd0ekszRDRLSmgxcmEyc3ha?=
 =?utf-8?B?Q2lhdjR3Ylphb2dLbkFtcGdCeVphNlNTRGg2b2JmK013Tmo1R3I0ZG54QTF6?=
 =?utf-8?B?dWdWV1AyZjllb0V4V25yT2pHTS9jNGVCdTMyU0VReU9vUVdMZEpNdjIyelM0?=
 =?utf-8?B?b3k2ZVBFdzBvKzhxZjhKVEdyclN1SDBYbzJtOXdMYm4rbUZodGNnVCs5MUh0?=
 =?utf-8?B?OVpZbXVUd3lURkF4VG1uZis5U1ptRXk1Sk1FeE5WVDNaeWlFMDhHMDVaMytC?=
 =?utf-8?B?SGtiREdwczdDaHVvMzRHUXF0Q1F5UmZYWkN2eHhYK0orSmlnTTZmMVRJWXVt?=
 =?utf-8?B?VHYwbGZvWVorNm5Zb2hJSnhDcWxlajVRaFRmWFZFZTV5aEhsdmU2WHlIS1Z5?=
 =?utf-8?B?MHl6Z1pXZnFxVFBPeEplSFA2a3ZyRVk5VTE0M1lHdk9QaGV3V29RNTVBVHNl?=
 =?utf-8?B?U3BLd3NTK0V1TFRuOGF2TkJMK0twL3RuUlF4MzNYRXBqOWgzeVZONm9pcFhB?=
 =?utf-8?B?Wk5DeVNqUEdYUWc1azVSOTFCTndYNDFhbGNJREtRK1hmQnpHTkRoSTBQT05P?=
 =?utf-8?B?eUEvMzRaczk5OHdmQXB0ejRxWGxlN2V1U01VdDBKL2QyblJJUHgxNmQyWmM1?=
 =?utf-8?B?Wkx2TkdKWUhucDd0RjMyQ3hla0Z2anAvNzdOb2hNZzhvNHMxUEcxL2hvREp1?=
 =?utf-8?B?dC8wbk9jZkNrdWNITWNFbUNlOU5BOFpDQVNvR2pId2cwMVlLek1GeXliQzBF?=
 =?utf-8?B?c2JBajUxYmgwNUt6TVVqcnIxVng4ZlJzSjgvcUpHSk9yV2JhWE1sTWRiN29F?=
 =?utf-8?B?bm1Xa2hhbCtrMkFYVzJWMkdvRHhrOHA5dS80c25MZzZROEgzYWlTbHVKSWtj?=
 =?utf-8?B?SFgrR1BGZklFcjc4QmF3NXpnWEVidXoxeHdRZjNhSENzb2RuYk1YZk1VaGxr?=
 =?utf-8?Q?tqJXmnALRAZMMAN7nYmceRRii?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a6efb7-0b8b-4c26-3e92-08de208a0755
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 18:50:33.5884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sDI/e+3aCHt6Lf5YaN9bVRt/Qx/U8zYc3fLHgVtqghcviFZSXNsLd921HagWFzGM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB9173
X-OriginatorOrg: amd.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/10/25 19:40, Andy Shevchenko wrote: > Use %ptSp instead
 of open coded variants to print content of > struct timespec64 in human
 readable
 format. > > Signed-off-by: Andy Shevchenko <andriy.shevch [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.52.65 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIYlQ-0008Vo-L5
X-Mailman-Approved-At: Tue, 11 Nov 2025 00:30:02 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 05/23] dma-buf: Switch to use
 %ptSp
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
From: =?UTF-8?Q?Christian_K=C3=B6nig?= via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jaroslav Kysela <perex@perex.cz>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTEvMTAvMjUgMTk6NDAsIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBVc2UgJXB0U3AgaW5z
dGVhZCBvZiBvcGVuIGNvZGVkIHZhcmlhbnRzIHRvIHByaW50IGNvbnRlbnQgb2YKPiBzdHJ1Y3Qg
dGltZXNwZWM2NCBpbiBodW1hbiByZWFkYWJsZSBmb3JtYXQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
QW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+CgpSZXZp
ZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKPiAt
LS0KPiAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jCj4g
aW5kZXggNjdjZDY5NTUxZTQyLi45ZTVkNjYyY2Q0ZTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL3N5bmNfZGVidWcuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMK
PiBAQCAtNTksNyArNTksNyBAQCBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X2ZlbmNlKHN0cnVjdCBz
ZXFfZmlsZSAqcywKPiAgCQlzdHJ1Y3QgdGltZXNwZWM2NCB0czY0ID0KPiAgCQkJa3RpbWVfdG9f
dGltZXNwZWM2NChmZW5jZS0+dGltZXN0YW1wKTsKPiAgCj4gLQkJc2VxX3ByaW50ZihzLCAiQCVs
bGQuJTA5bGQiLCAoczY0KXRzNjQudHZfc2VjLCB0czY0LnR2X25zZWMpOwo+ICsJCXNlcV9wcmlu
dGYocywgIkAlcHRTcCIsICZ0czY0KTsKPiAgCX0KPiAgCj4gIAlzZXFfcHJpbnRmKHMsICI6ICVs
bGQiLCBmZW5jZS0+c2Vxbm8pOwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==

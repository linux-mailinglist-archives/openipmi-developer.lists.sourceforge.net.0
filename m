Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F3090831E
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jun 2024 07:01:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sHz3a-0004w4-B0;
	Fri, 14 Jun 2024 05:00:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1sHz3Z-0004vy-BL
 for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Jun 2024 05:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cqlweyjK14N50xiTTA80ulgicJ8STbumpoeBWzv+Bhk=; b=W4PRobCkezPXcx/oCas9dNUPsM
 WIfIS062yUVqoAioP0cg9+OA0Gg0GlKPXeA63krfXGsRIpnsTdiRsJ8jujIDjAb28QEpmaxZTkEMp
 w3lVaL3KgF81Y/HbHda4DZU+OsgfwhyHrrV12QKKd601C+THz0gYuqTeOK2+Eqi/qHsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cqlweyjK14N50xiTTA80ulgicJ8STbumpoeBWzv+Bhk=; b=j+evIEwhmZZwb2+h0lgcWdAHnF
 ZtfpEJODiOpCKqD6jMXzNtyi2SI9O1tNV5MLVmMmhbJTvXGAebUDTn5KMmS1KW/jN2c/lYqT30MQ+
 j79muKnr2R1s3PncSF+CrIgqbjzjCcp4fEJ6xmADT82RkAikzYAvrVvGahb7mn6/NXXM=;
Received: from mail-dm6nam11on2136.outbound.protection.outlook.com
 ([40.107.223.136] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHz3a-0000TW-Hb for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Jun 2024 05:00:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l9r+GKXODdGFBvAgrminGnawEX+oCn8yCCaTTIwaGjlQ5jOrwEdqicu1USzcqoSpMAdsettgbDX8fPqb8B0yZGFce8vGv4zHUVnbQlu+h5PoiF0c3DAt6MXnQmRTqVHe7ecI9I9BWG4OQi4BBRwdu650ZdDSLAoIeTYp6GK0V3O4a0M1tfjVJ0qxDzw0p/L3LZ7SlncOTu2HjRmCuDB9a+fDGuPoiTMkfiJok7tzOeDPMOUxi3YZd/1xEmvLGin8u1GzPLL7ms4HyVHhzb5Dx57gn5D84YLeHlaaVoXJBvZDDpcD9SPQp925UZ6ROrpMsiSTicB9+HqqmgtghSUhCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cqlweyjK14N50xiTTA80ulgicJ8STbumpoeBWzv+Bhk=;
 b=aCZmGXcAk6KuYuUCqnY0bKgSwsUj1KFlT8D1JkXnOasQmqhKv0YSzwZ4QINA/WGd14y+iC4Cm+tMWNBLHrb6yGHGAquJ+2itYluVZ6e4ue8ujG+MSJd+2oS8za51IHh4TLFhf0nMspujd4t8UGYjY2r9DTdybuEHnpZz4xLdDkllWfTgC7cc1JYtzwNbl1gP3aWCjtQX9qQnXfJA+P8vfN0XOfXD20BcxMjdSjjLIBvmX7/KV0oKMuvbvBcNKusbDnFGsLjBvBeGYJIvuHeI0yreuBn6cJZLE2VoLYcAXi+MgwjBwNrRIw3taZ7NNRiHdWRBermfq0IEGhk+w+nvFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cqlweyjK14N50xiTTA80ulgicJ8STbumpoeBWzv+Bhk=;
 b=TEYm8zWdEbEh9hr38PCEKpqjLMvB9eZgDry5wwG51h4H1klUlXsmoese3cw9uQS0x4icOwnUv8IbicUWWvbqlZIXzLPtuIe2XgZ02jHpPa87py8B0bne5E/JDQCwQ8/Qq489BC2Ft9l8KyPRwIQZZR5bxTQL7HiRHOEjQjemLgA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ2PR01MB8193.prod.exchangelabs.com (2603:10b6:a03:4f6::15) by
 DS0PR01MB7892.prod.exchangelabs.com (2603:10b6:8:144::5) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.21; Fri, 14 Jun 2024 02:29:21 +0000
Received: from SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d]) by SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d%5]) with mapi id 15.20.7677.024; Fri, 14 Jun 2024
 02:29:21 +0000
Message-ID: <9559478e-5382-4de6-a755-29b115d5f5c9@os.amperecomputing.com>
Date: Fri, 14 Jun 2024 09:29:11 +0700
User-Agent: Mozilla Thunderbird
To: Potin Lai <potin.lai.pt@gmail.com>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
 <20240612043255.1849007-3-potin.lai.pt@gmail.com>
Content-Language: en-CA
In-Reply-To: <20240612043255.1849007-3-potin.lai.pt@gmail.com>
X-ClientProxiedBy: SI2PR02CA0027.apcprd02.prod.outlook.com
 (2603:1096:4:195::14) To SJ2PR01MB8193.prod.exchangelabs.com
 (2603:10b6:a03:4f6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR01MB8193:EE_|DS0PR01MB7892:EE_
X-MS-Office365-Filtering-Correlation-Id: 2513b14a-104e-4083-7659-08dc8c19ccbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230035|1800799019|366011|7416009|376009;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dWQxdDYrRHhVS0lZZDEydk1BTGpPWTRZdVNnSk9uOStqSmJudnNvUEdIYTdH?=
 =?utf-8?B?SmpMUlZqODk4cmp1K3NpODlDejBEZ1piMnJCN0lnK0J6WHlPOEo1cWhrZjZT?=
 =?utf-8?B?VEoxOHZNNnJyajFseDhsaTc2RHBlSnhnL2VETUt6QlpXdXBQUjRZL2dFZlNS?=
 =?utf-8?B?ODNwT1ZSd0phaGd1Ni9JYVNBTnh5ZFI1OHVMelRWbVpaZXpzemJyU0lhMGpq?=
 =?utf-8?B?Yjl3T292NE1JZ2NzOW0rUC9rVGIrNk55QzVXd3hjWXNIMDVBNkJSWWRhUGR3?=
 =?utf-8?B?RVlKaUdVSFdRNHlaaGprSUdMZm55T2xTN2I0R2JRVUI3bDgzMnAyVk5qMVRh?=
 =?utf-8?B?RXcrdkRxTk9pcjBlU3ZUbkZSK2Nja1Z6Z0hBaDVHeUFDWEo0TWVZdlhWNUNP?=
 =?utf-8?B?WkRTQVdlam9EaFMzWUlnRC9taCtnR1BSL05SbldiVENDeUlvV2FwTUJWQVcy?=
 =?utf-8?B?MzBhZnQvSndqaHNMZUlLTWhybDZySXFyZ0xNRmdBT2lQVUdGb0lyeTY5VkVL?=
 =?utf-8?B?KzhEaFhzcXlEL2VKWUd1blhha0pmNWN6NEVVdWJ1VlFyMUdmdnNCcmFMMzh3?=
 =?utf-8?B?QXJzSTRzNkdJN3pWRzBmaGd2aG50c1NjZjQrSUF6b1JWWEdoK0IyQ1JTMlpF?=
 =?utf-8?B?VG0vVG9BRVljemhRTlA2Tml0SVBpNlVDbVZhVHBDZ0NjM01jSE5JRXFHcFpP?=
 =?utf-8?B?c29IeGJsVi9lQUt1MXkrVmxaMW9PbDFPcVZtZU1BVnJwOUhjUHVKTnBZb1M1?=
 =?utf-8?B?Q0t2L00yVmFyc21qSHk1elkxaDBEaEpuaElpR3BZOW1xTDU1SFV4OGVudVZX?=
 =?utf-8?B?SFpIcGRZWEtZZndmckxlQnZMaHYxM1Q2MmxjMjlkYnp3K25xMjZWM2tKTkRr?=
 =?utf-8?B?eEl2Rk5NM2t3VSt6U0NLdGMyeDZRWFFWVVQ3SnFLRWptYzNublhvRFpsc0Z3?=
 =?utf-8?B?N01CWEtMV28va2pheXAvWGsrQTFlMFVjRUdiYTVCTkNRVlBHbWlZU2wrNE5X?=
 =?utf-8?B?UG1pcldGMlRySDBPV2ExRDI2Zzh3SHpicUNFVFIzditqMFBEMktyNlkwaFFP?=
 =?utf-8?B?SVpVQVZHVnBKczlzNzVrS0JqdU1Qd2w1aW4vckdORVFMYWliS21Lc2ZNWUJT?=
 =?utf-8?B?TnpqYXpTejQycmhHYjN3bFVVNS9BNjhZVjh1RkFiMGE3TWpNNjZsYUFyaE52?=
 =?utf-8?B?U0NsZVZZbWx5RWxETFpwR2plNndJS1dESmZncSt5T2FpZFJzZDI0QmxZK21z?=
 =?utf-8?B?WTFEVHZFbUthQ0tJSFJMbm53VmtTMndlbVlwcUpPTlhTRll2RnhGRTRsY01B?=
 =?utf-8?B?SWpNUWxObmtyRVhseUJtMWhnWUFnZXlJd1c5b1FEZnAxVGE0YjNudC9ldXVT?=
 =?utf-8?B?RmdGSmJVakxtOW90WGxlUHVRUmFMaWs5MEJkMTRrMEVRS0hvTWlrdHBDQXYy?=
 =?utf-8?B?OFJGdU1Xd3h4Y0lUWEhWNEVDQlVkSHY0d0JaZTRzOStuLzdqZnBhQ3Axem5x?=
 =?utf-8?B?Y21OM1kwZXllRjFYUEt5SzZlcXEycU0zV0Z6Y1dNM0YwVzdTS0JZSThSSFJ1?=
 =?utf-8?B?YXd3eHRVU0NaNVN2ZTFMNXY2a3FmU1NNKzJEYVE0R0s4SFluWTM1K1hxR1Uy?=
 =?utf-8?B?a0VaU0dvc3lzYlhLNFJ6cm1hb0gyYXJkc0tHV2hCODVRVjZxVFlhWm9IVGVx?=
 =?utf-8?B?V2toMzZDUXg3UHlzSzJOWlc5MHhWaVNvckFTR1pSMEhVbDVveUhKOStIZXpu?=
 =?utf-8?Q?NT+qJccsU1YH7jEu171bksIJmPOsN3IF7IgDHW4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR01MB8193.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230035)(1800799019)(366011)(7416009)(376009); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGQxSGFqUjg3Zm9KTGExbHV3cTE4Ty9xM0Z5TFN5RnlhaWxybkhtZFRZOG9H?=
 =?utf-8?B?dm9qV1padGJqSWttbzQxQkVYU2YvMzlTcHdKdWc5ZGtzZFc4Vjd4ZWdMWGx3?=
 =?utf-8?B?RHROSWg5WTBEQlhtNkJCVWxSZFZWaG1EeDgvdXBhdDdFZk8wK2lmSXNOckFH?=
 =?utf-8?B?RUxSR0VwcW5hWStnSlh5akhiQWF1aEZLci9hR3kwQVVNV1I0WkR3R2srQU01?=
 =?utf-8?B?VnIzamYrbFlaYlRHZjZncGVKWHBrYjJuUVgyUXBWdTA5YjJFM25SeXN2UG42?=
 =?utf-8?B?K2V4elpBZUFjSmM3SlcxME8rUXhRMnYrcFBQaGxKS2Q1cUttUzNRcEVZRHBs?=
 =?utf-8?B?bWtLSERVMk9qOCs1ZTNaREFrYTJTMGVGRFpoNzVkUWcyT1NCWjJsWkNRTUZZ?=
 =?utf-8?B?cmdUb0huZEV3eEwyR1Urc3dBTmVjaGhrOUhGSk1yQTJCQVhWbjdBRHh6Z3Vt?=
 =?utf-8?B?MkpLZ2tVcUw0Z2ZnUzIvTlc1ZjVVTHhHK1JrOTIremt3cEZWTEFGVE9rc1lQ?=
 =?utf-8?B?dU9DOG1TSUVjNFdXMXR2UFhlSVJLMHpFeFM5ampRQnFHUWw0dkduUmhZcS9Z?=
 =?utf-8?B?TGFFT3RvYVBBdStzVFhtQU51RS9ETHNOeDZsS1NvQnVTS2dyancrWStyK0FU?=
 =?utf-8?B?Qk1OczNlUGplSTF2MXk5NXhGOStMU0Z5WU1UdUFBZllNNUVSME0wVitHdXBl?=
 =?utf-8?B?c25SdFVPeURKUlBMT0JISGxnQmgxVHgyYmNvNHdkelFaSEhsWC9jeUNzdFhs?=
 =?utf-8?B?OXJ2b0RTT2lVWCtVaXFHTXhCWU9BYUZnbUFKRjdrekFGT3ZzTzJOMzI5cFRV?=
 =?utf-8?B?SC9QeGp3NTVhMnZidGFRVU9YZjNNdm1yZHZWREZnTTFISkYzeUMwTWE1WFJz?=
 =?utf-8?B?c2FOSHp4T3kzUm5jVzI4NjVoUVVnUUJTam9tWWNjRWlDOEZMMVA3Y09MYTE3?=
 =?utf-8?B?bHBCeWhXK3EyaTQ4Z0ErdnlZVTJZWlJ5ZWVVSlgwdVY4L25aekxMZ2duK0Zv?=
 =?utf-8?B?dzZ2bTBiTFBMNnBuZzhnOUpIbk1FNTd3MDI3aW5xN3lJTHVzZHBPYy83TFQ3?=
 =?utf-8?B?aUJzQWFST2ZHVlpFNlg2UlJEeWJLRUQ2WjRCNnQzOVhRRnd4NldJNmxOa1lT?=
 =?utf-8?B?S2hpM0FHdUFDRTU2ZlZDYmsrTWQvL3JZMnArdXNWU3RrTWZtYnpaR0R1bzNh?=
 =?utf-8?B?UWdhajdrN3hiZ3diemRzeFNxM3BpdkZMMjcwTys0MUd1QzBIUHBZWDZaMlUw?=
 =?utf-8?B?UTY3bXdBaXp0ckVtNk5SbzVXTVpVTjVCLzMvOTZvc0RiQ3ZORS9ZcEk3eUMr?=
 =?utf-8?B?KzJscDdSVmdvNmJJTFBwRXR1ZFh3ckxMZ1AwSjFIWmMzMk9TWU5XYnBBTFMr?=
 =?utf-8?B?TnVFaHFEYzZ3REtsU2dqb0hMTFhKTG8vN2lWWHVKM2w5azRobDB3RzlEcnVD?=
 =?utf-8?B?ODdmYjhFZHMySWJkcVcxWkNMSWRRLytVMDg1QWVpZjBQU044cXFpa0NicnBP?=
 =?utf-8?B?c09uUFVZaWJJMG9hSVNvMW1iV0VROTFkdVpzYmdRenl1ZVZSTXRhbkRCVk9Y?=
 =?utf-8?B?RGF4VXdRVW5rQlYxVUxUZDV1NHNuYUhqTERKamtEVVZPWVl3dGRtc3dCZ3Jr?=
 =?utf-8?B?N1RiVmdiNjFLSUdIaUk2ZGtOaFRNRkxrZEMvWEtQWDdiblVvTTdwdlljSWVU?=
 =?utf-8?B?UFBZTUtqa21kaUdmbDNSSzdUMmNhbmI3VUVpVGZMU2VCaVVlV044aUlDWDlt?=
 =?utf-8?B?VW5UQnEyL0NuaStHdU1RUVowYTN0c1Q3SXIrOWE4SDVrK25qZkErVTNnNnFW?=
 =?utf-8?B?dHc3U2grcmFzd1hpWnN2eS9XM1JPZ05BM2I1YmdTWEhpUG9Fd3llbWtmRy90?=
 =?utf-8?B?WmN4eGVlWUNwMDV5VDZ6UmM5em56Z01QV29PUGZCOStCN0pwd3dmMkJQUlB0?=
 =?utf-8?B?Z3JOQzA0SEVCeUJKMlRteHVGSTRBb1RGTndxMVJsZGFrcGkzWi90cWxFbjdp?=
 =?utf-8?B?OWNMYy9MOVhwY3BJVzZwZXRBRVEza2o5MmNRSFgyMGxSbDd3OWNCcnJKM3li?=
 =?utf-8?B?L1d1azd5TWg4UTZ0a3lPKzVrTVJoYlB2bE01ZkhHLzY4QXU1OUtVOHRGQ01m?=
 =?utf-8?B?b1R2cHV0eUoyWGJ4MllZWEhSVmZzdzc4NEdJamxQbVdQNFdmeEdlR1NhVXM2?=
 =?utf-8?Q?2cp9K02pJntp/sbFcyJnC50=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2513b14a-104e-4083-7659-08dc8c19ccbe
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR01MB8193.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2024 02:29:21.7761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZJMMYe8Gx7xhsknb4vK6hSmHIoj1x9KysjS1J+7jSjDnlhlU+nHkHWJ28/PZLhxUXfWo41Yh47/1Nlusha9Dow89XQzTNid1Oulqn6ILbsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR01MB7892
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 12/06/2024 11:32, Potin Lai wrote: > In ARM SBMR document,
    the host can chosse to not read back the response of > “Send Boot Progress
    Code” command. > Thanks for proposing a solution for the case. 
 
 Content analysis details:   (-0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: amperecomputing.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [40.107.223.136 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [40.107.223.136 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.223.136 listed in wl.mailspike.net]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [40.107.223.136 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHz3a-0000TW-Hb
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: ssif_bmc: support
 skipping ARM SBMR bootprogress response
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
Cc: devicetree@vger.kernel.org, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Patrick Williams <patrick@stwcx.xyz>,
 Cosmo Chou <cosmo.chou@quantatw.com>, openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiAxMi8wNi8yMDI0IDExOjMyLCBQb3RpbiBMYWkgd3JvdGU6Cj4gSW4gQVJNIFNCTVIgZG9j
dW1lbnQsIHRoZSBob3N0IGNhbiBjaG9zc2UgdG8gbm90IHJlYWQgYmFjayB0aGUgcmVzcG9uc2Ug
b2YKPiDigJxTZW5kIEJvb3QgUHJvZ3Jlc3MgQ29kZeKAnSBjb21tYW5kLgo+IAoKVGhhbmtzIGZv
ciBwcm9wb3NpbmcgYSBzb2x1dGlvbiBmb3IgdGhlIGNhc2UuCgpBcyBwZXIgbXkgdW5kZXJzdGFu
ZGluZyBmcm9tIHRoZSBBUk0gU0JNUiBkb2N1bWVudCwgdGhlICJob3N0IGNhbiBjaG9vc2UgCm5v
dCB0byByZWFkIGJhY2sgdGhlIHJlc3BvbnNlIG9mIHRoZSAiU2VuZCBCb290IFByb2dyZXNzIENv
ZGUiIGNvbW1hbmQiIAppcyBmcm9tIHRoZSBpbXBsZW1lbnRhdGlvbiBub3RlIChVKSBpbiBTZWN0
aW9uIEYuMS4xLCB3aGljaCBpcyB0byAKcHJvdmlkZSBndWlkYW5jZSBvbiB0aGUgaW1wbGVtZW50
YXRpb24sIG5vdCBhIHJ1bGUuIFRoaXMgaXRlbSBhbHNvIApjbGFyaWZpZXMgc29tZSBjb25zZXF1
ZW5jZXMgaWYgdGhlIGhvc3QgZGVjaWRlcyBub3QgdG8gcmVhZCBiYWNrIHRoZSAKcmVzcG9uc2Uu
CgpUaGVyZSBpcyBhbHNvIGFuIGluZm9ybWF0aW9uIHN0YXRlbWVudCAoSSkgaW4gdGhpcyBzZWN0
aW9uIHRoYXQgCnJlY29tbWVuZHMgcmVhZGluZyBiYWNrIHRoZSByZXNwb25zZSBhZnRlciBzZW5k
aW5nICJTZW5kIEJvb3QgUHJvZ3Jlc3MgCkNvZGUuIiBJIGZvdW5kIHRoaXMgc3RhdGVtZW50IHN1
aXRhYmxlIGZvciBTU0lGLCB3aGljaCB3YXMgZGVzaWduZWQgYXMgCnNpbmdsZS10aHJlYWRlZCBm
cm9tIHRoZSBiZWdpbm5pbmcuCgpJJ20gbm90IHRvdGFsbHkgc3VyZSBhYm91dCB0aGlzIHVuZGVy
c3RhbmRpbmcgeWV0IHNvIHBsZWFzZSBsZXQgbWUga25vdyAKaWYgYW55LgoKVGhhbmsgeW91LAot
IFF1YW4KCj4gVG8gYXZvaWQgU1NJRiBiZWluZyBpbiBhIHdyb25nIHN0YXRlIGR1ZSB0byBob3N0
IG5vdCByZWFkIGJhY2sgdGhlCj4gcmVzcG9uc2UsIGFkZCB0aGUgaW1wbGVtZW50YXRpb24gb2Yg
ImFybS1zYm1yLHNraXAtYm9vdHByb2dyZXNzLXJlc3BvbnNlIgo+IHByb3BlcnR5IGZvciBza2lw
cGluZyB0aGUgcmVzcG9uc2Ugb2YgIlNlbmQgQm9vdCBQcm9ncmVzcyBDb2RlIiBjb21tYW5kCj4g
ZnJvbSB1c2Vyc3BhY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogUG90aW4gTGFpIDxwb3Rpbi5sYWku
cHRAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYyB8IDI1
ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgYi9k
cml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCj4gaW5kZXggNTYzNDZmYjMyODcyNy4uMzM4NmE4
YmQxOGFmZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCj4gKysr
IGIvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYwo+IEBAIC0zOSw2ICszOSwxMSBAQAo+ICAg
I2RlZmluZSBTU0lGX0lQTUlfTVVMVElQQVJUX1JFQURfU1RBUlQgICAgICAgICAgMHgzCj4gICAj
ZGVmaW5lIFNTSUZfSVBNSV9NVUxUSVBBUlRfUkVBRF9NSURETEUgICAgICAgICAweDkKPiAgIAo+
ICsjZGVmaW5lIEdFVF9ORVRGTihuZXRmbl9sdW4pICAgICAgICAgICAgICAgICAgICAoKG5ldGZu
X2x1biA+PiAyKSAmIDB4ZmUpCj4gKyNkZWZpbmUgSVBNSV9HUk9VUF9FWFRfTkVURk4gICAgICAg
ICAgICAgICAgICAgIDB4MkMKPiArI2RlZmluZSBJUE1JX1NCTVJfR1JPVVAgICAgICAgICAgICAg
ICAgICAgICAgICAgMHhBRQo+ICsjZGVmaW5lIElQTUlfU0JNUl9CT09UUFJPR1JFU1NfQ01EICAg
ICAgICAgICAgICAweDAyCj4gKwo+ICAgLyoKPiAgICAqIElQTUkgMi4wIFNwZWMsIHNlY3Rpb24g
MTIuNyBTU0lGIFRpbWluZywKPiAgICAqIFJlcXVlc3QtdG8tUmVzcG9uc2UgVGltZSBpcyBUNm1h
eCgyNTBtcykgLSBUMW1heCgyMG1zKSAtIDNtcyA9IDIyN21zCj4gQEAgLTEwMiw2ICsxMDcsOCBA
QCBzdHJ1Y3Qgc3NpZl9ibWNfY3R4IHsKPiAgIAlzdHJ1Y3Qgc3NpZl9wYXJ0X2J1ZmZlciBwYXJ0
X2J1ZjsKPiAgIAlzdHJ1Y3QgaXBtaV9zc2lmX21zZyAgICByZXNwb25zZTsKPiAgIAlzdHJ1Y3Qg
aXBtaV9zc2lmX21zZyAgICByZXF1ZXN0Owo+ICsJLyogRmxhZyB0byBza2lwIHJlc3BvbnNlIG9m
IFNlbmQgQm9vdCBQcm9ncmVzcyBDb2RlICovCj4gKwlib29sICAgICAgICAgICAgICAgICAgICBz
a2lwX2Jvb3Rwcm9ncmVzc19yZXNwOwo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGlubGluZSBzdHJ1
Y3Qgc3NpZl9ibWNfY3R4ICp0b19zc2lmX2JtYyhzdHJ1Y3QgZmlsZSAqZmlsZSkKPiBAQCAtMTg3
LDYgKzE5NCwyMCBAQCBzdGF0aWMgc3NpemVfdCBzc2lmX2JtY193cml0ZShzdHJ1Y3QgZmlsZSAq
ZmlsZSwgY29uc3QgY2hhciBfX3VzZXIgKmJ1Ziwgc2l6ZV90Cj4gICAJCXJldHVybiAtRUlOVkFM
Owo+ICAgCj4gICAJc3Bpbl9sb2NrX2lycXNhdmUoJnNzaWZfYm1jLT5sb2NrLCBmbGFncyk7Cj4g
KwlpZiAoc3NpZl9ibWMtPnNraXBfYm9vdHByb2dyZXNzX3Jlc3AgJiYKPiArCSAgICBHRVRfTkVU
Rk4obXNnLnBheWxvYWRbMF0pID09IElQTUlfR1JPVVBfRVhUX05FVEZOICYmCj4gKwkgICAgbXNn
LnBheWxvYWRbMV0gPT0gSVBNSV9TQk1SX0JPT1RQUk9HUkVTU19DTUQgJiYKPiArCSAgICBtc2cu
cGF5bG9hZFszXSA9PSBJUE1JX1NCTVJfR1JPVVApIHsKPiArCQlpZiAoc3NpZl9ibWMtPnJlc3Bv
bnNlX3RpbWVyX2luaXRlZCkgewo+ICsJCQlkZWxfdGltZXIoJnNzaWZfYm1jLT5yZXNwb25zZV90
aW1lcik7Cj4gKwkJCXNzaWZfYm1jLT5yZXNwb25zZV90aW1lcl9pbml0ZWQgPSBmYWxzZTsKPiAr
CQl9Cj4gKwkJc3NpZl9ibWMtPmJ1c3kgPSBmYWxzZTsKPiArCQltZW1zZXQoJnNzaWZfYm1jLT5y
ZXF1ZXN0LCAwLCBzaXplb2Yoc3RydWN0IGlwbWlfc3NpZl9tc2cpKTsKPiArCQlzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZzc2lmX2JtYy0+bG9jaywgZmxhZ3MpOwo+ICsJCXJldHVybiBjb3VudDsK
PiArCX0KPiArCj4gICAJd2hpbGUgKHNzaWZfYm1jLT5yZXNwb25zZV9pbl9wcm9ncmVzcykgewo+
ICAgCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZzc2lmX2JtYy0+bG9jaywgZmxhZ3MpOwo+ICAg
CQlpZiAoZmlsZS0+Zl9mbGFncyAmIE9fTk9OQkxPQ0spCj4gQEAgLTgwNiw2ICs4MjcsMTAgQEAg
c3RhdGljIGludCBzc2lmX2JtY19wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICAg
CWlmICghc3NpZl9ibWMpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+ICAgCj4gKwlpZiAob2ZfcHJv
cGVydHlfcmVhZF9ib29sKGNsaWVudC0+ZGV2Lm9mX25vZGUsCj4gKwkJCQkgICJhcm0tc2Jtcixz
a2lwLWJvb3Rwcm9ncmVzcy1yZXNwb25zZSIpKQo+ICsJCXNzaWZfYm1jLT5za2lwX2Jvb3Rwcm9n
cmVzc19yZXNwID0gdHJ1ZTsKPiArCj4gICAJc3Bpbl9sb2NrX2luaXQoJnNzaWZfYm1jLT5sb2Nr
KTsKPiAgIAo+ICAgCWluaXRfd2FpdHF1ZXVlX2hlYWQoJnNzaWZfYm1jLT53YWl0X3F1ZXVlKTsK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B15C49DDF
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 01:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=seZjwgpYqwMgnHCh5dorQSS1UmUl+STDtKGH8D6NpNI=; b=GwSm1iyqt9BB6jDN5RJ77YZz3Y
	rRu9rGR1BC9h3eEIo6UFnEiHqg0XuYwGy+88zV2Mno0LOTITwar/mJxMX0LFhQyQ57ISgplRtFYm6
	lOOjxKXgZJ7RZCkuBsmipvsnlDn+CUwJrUiWK+uEDMk6Uhzfw687+4jGUDxC+DtWUkF4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIcGp-0005eM-T4;
	Tue, 11 Nov 2025 00:30:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucas.demarchi@intel.com>) id 1vIXV7-00015c-Oi
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dbd7UFiEyZXYPzT9fXijJL/ZnARqYr8nYUw1HeSuYNQ=; b=MEUFeDkcL/pda979+UXGt0lK/T
 qEL5l3WmRJHoD+8hO679cZ2SEIajYa06M5wcyLdzgeE7QsZOLNUTV5P19vvN4uXH627dfKN49woEN
 Za10R8+/qhvcn9xhe4ER7zl7WC8daY5cPpVsRp0Oe9nCgh0GGGqRbazOu54Of+V7mK2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dbd7UFiEyZXYPzT9fXijJL/ZnARqYr8nYUw1HeSuYNQ=; b=FlC5giwZkfrVebw/8KUqiR9ftH
 eo8AfRoh2Bsg2zXkXHLndB9A+Jo8Ns1cj120tRGwkr5MGa3UeuF9RxOMMRr00pL+3Qmzl9lS/PN/z
 WFY5fCKqI04WD75qDB3WKO2p8WSVmwsomUd1NeJackSsLE6fhQowb5sVuq8Jsbu+hI1A=;
Received: from mgamail.intel.com ([198.175.65.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIXV7-0004Zv-Vl for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 19:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762802670; x=1794338670;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hK6Paecx1pZBbdD3MSEMRPx245x6PRyR0TYrxCNk2r0=;
 b=InDm1lYC/yCIianspxSftFlaF4iSehwt7hHcalw9cjMADKnILYKX5EmB
 x0QpKejex5yTdDhfWnRj6nwUOaey4uFPgZvSCNzbQRlXjhLt3K5s9KZsU
 6PSLKuRIqdF6sZo3JVD08SAS+OT7/8uyfo2/7oTqkKDlACY4wGWyG7ZMq
 a6gIzebs16Kk2ErM+f/2GWlIJPIGSbA5cB9UBZBEVpelJQJyMK/kmverQ
 4lnTOFxrUQMXpjBY0d+FNBhXHq54FAi1joBCWaI3u+ZlZGWz6m64jrOAl
 c1KMGUE6G2vCObKZRgvYPXaqDUu26tb6kCQx6szZgVMNNe0V0latAvSsD g==;
X-CSE-ConnectionGUID: VolcSPNlSGyNSDkoP3EfGA==
X-CSE-MsgGUID: c1JcFJhTQZyBwkSsTp7zNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68503035"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68503035"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:24:19 -0800
X-CSE-ConnectionGUID: 9Dh9kcYdQ4CbCfaLdlcc2g==
X-CSE-MsgGUID: 0flXSTweQnSCYIT9t3L2cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193758258"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:24:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 11:24:16 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 11:24:16 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 11:24:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LLgcU/HLfo+DEK0eu282HukakXAd8FeK0EbZQGzAK7nTwcMN9fa54kZD+rsalHiBjzkeU8/cXAHHqq40QDp4t0rXMO49xNSjYNwTKPDCC1wxAaIXXTr/MRSvwyWH/OdrUsGHzjLpgWSv/qWP85M4zX5MIWDAEl3sLlp0Mqf3QfNKZlb07Jppqkc4R0MYFPzGb4ZOLYl4uS5b3lwwx7GU12GtFXAUQN6TZoxxZQlWwFIqM2VmQY+SIH/LZS8YOdO7rCVAUREEGt5iEwmGy/ypoal+wcxx2TuiwvC27WLFOZRBarRDTaG0rzFr1X+5IJCkiXXhlM2UMLIqYGm9OQSM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbd7UFiEyZXYPzT9fXijJL/ZnARqYr8nYUw1HeSuYNQ=;
 b=U3fOlRO9nWyD0axgWJsSzKORQ7rPIMylkup3IgEAKiGGtw2StxeDW+qtPh0iCqHE/QNhxEp026u5aV8RamD+vG/MBsI43OCtKryqHyHM/Dw7uTBDE7aVOPnpfgig2qi4C4YoDwuqmjvqXNpYMbRx957WSAXuaI5tFxDFpS1pGMpN6SkzYsfbuzuo68FDcihSAKmQg2CAJg/csIcIlmnvkOprl5jjwY+bx9urlnUHaj/9M3DyhtmpQuk6xRxcKA3X0C+tCqYyYKrpQtCH2rOQ1BWxbBiDev3uhG5I+aASornSKlLuhJg8cqB3VphlxvRMXV7TtiMNfy0NSPSiCO8wQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB7568.namprd11.prod.outlook.com (2603:10b6:806:34e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 19:24:13 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 19:24:13 +0000
Date: Mon, 10 Nov 2025 13:24:02 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <dckciwtwu3nt5jxbymqcl3vacaiz52ncjfyrkr5h5e64vchzpf@hhiuqzx3aulz>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-10-andriy.shevchenko@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20251110184727.666591-10-andriy.shevchenko@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0164.namprd03.prod.outlook.com
 (2603:10b6:a03:338::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB7568:EE_
X-MS-Office365-Filtering-Correlation-Id: a1d8c331-149e-4d89-507d-08de208ebb58
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nkA2mfyqh02Ogog9N3XRHVdWkgY57lLmEAHda0AKncN00GzSAODzmCE9VEns?=
 =?us-ascii?Q?ZfCE4biqcybIPJy2s0Uqf8CJlc12T4+PQsoyf2yLbOY60xfWpRAvIdqqlAyP?=
 =?us-ascii?Q?hHHDddkpnT0Eb6X4Vju7gM3Wdk/kh5RLPP4vEBBHoHbfDgWXn4plquFivaf6?=
 =?us-ascii?Q?fFBoy2bYfYEkacTGytfRBQxlopdh7yaYFmcxhZHrDj8NNouUMNcYLWnkunEq?=
 =?us-ascii?Q?7d8TftdoLlH0GIvZJ2Np6n3Nn4i1e0th++W5bhMrzaRu75fNNvWClRwKpxwp?=
 =?us-ascii?Q?dIse1i031vovC3aAKlK8m+ayuLKzxSY5HNF8xblkSYwiQRDwLwDfRVr4uyuj?=
 =?us-ascii?Q?1V92IuBUosg87tjXLzUH0GfqqCqVQbGBi1ILu5VZJ/AMN60dY8pz/J4cUsKZ?=
 =?us-ascii?Q?VBJO/nGzl3DSyjWmV1/zxq5vQaTjHjPHrGsvJHeohnzc5hK/sLVNRelhBGgQ?=
 =?us-ascii?Q?nQAygnZvPTjK4CzpWB2Wqtv2SgkVHaMFKHsyNzIhmLvpjb8VpbgipoTyFPfb?=
 =?us-ascii?Q?4j6tF4dywxa+vMdImuT+qEnoDKrkVgyiMYfLBia4i52x2K8Kikrvm//aI/yr?=
 =?us-ascii?Q?Yfi392RRNhMmpzBOwJAAjQSAd6g7flkxkTuWDYWMC2auZL+Xc/hRiySC3F39?=
 =?us-ascii?Q?RlIhv+rnz+LzBriddISat/mvQcCFKXGMROP73bb25BPJUYjgvHV2lPZ21e9t?=
 =?us-ascii?Q?QPemEN1Zia5R2hdtXZP81qnMjV1seUEqqoh62EUUrWm4T7tfmrETJU3dfjxI?=
 =?us-ascii?Q?gk3kq21QC//dSHXdVcOktHXfhcp2VVGPiN4Zn0Lpp/giYW1bg/ZNVGJJCiGq?=
 =?us-ascii?Q?eRljKmFnFXph9zS2yG5ba6Gxk0T0Ha6XUFKIAiNb7WksFnFxWhu2miTnarzy?=
 =?us-ascii?Q?z6+Ak1X4HIkboPnJLE1hpWbyRdgOThFsMBdyzeTFVLQMc947xWBQNohtOJ8Q?=
 =?us-ascii?Q?40d1FD8Bs16R4MdISG6wAf/TpaBkcTs0AwhOxXCUJUKBiDyJ2luXlH8gTL4l?=
 =?us-ascii?Q?PFyvZeRbskuhMMOlGUjCdu5UoUSdcjtqfZvvOiizNWVHGmBMYMQsfgH0MIF7?=
 =?us-ascii?Q?snqzbx87qCb6Xo9ho2/EABT3+4QjUtHfqhaku6V8AMYh4Whjad+2MkyfMK0Y?=
 =?us-ascii?Q?g4a6URArB5RaOIwavBpHaufgN5MFdEXU4cudVRy3QEmYxMXmZFQ0/ATiaGvd?=
 =?us-ascii?Q?brkBO/Mz3QiizE8h0e3brkaBBuEcnYn7skr9jj9SQzoiovnAUOnOJ0KnA2l4?=
 =?us-ascii?Q?BBgdMyAO+YGSM67aT0muqq1qO7kCUxJOaKDMScfoJoTVq/dqoKVC048ZlIV9?=
 =?us-ascii?Q?GxucJsR4nhCD61t9+VkB19TKjCVkLHYq8EFDFwEIpz6ETgrx9PoGiuCaODeZ?=
 =?us-ascii?Q?JXXKq68EToB7bMPTqgV02ri9YuBsWuNGrzTUxLbTR3znH6B2sitJ986zZl7M?=
 =?us-ascii?Q?nQjqBQLI+eiw2ou2D7w7HWD4skcWL0rJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VNJLZDOiKyI1DWBXv4/4uWwIkf7MfM1q/nkSwa5OH9n7qmekkyJy0q07fFL9?=
 =?us-ascii?Q?TzqT23mQWRqB9zGIVAZvrRHZY/46vrOwm13vH8O9cJHJ2l/SdnFgm/idWZ06?=
 =?us-ascii?Q?qw+tnxnBcvTT/OLo1hErAPOuplEcmizv7haC+aFZ5oGqXAxqLjitSHgFPdNp?=
 =?us-ascii?Q?0WZNRahPpwtXge65Q0zDkWSykzy00o2ERm7/cBQEOAViDkrQ8jTZrv03iryo?=
 =?us-ascii?Q?jWH1qaaM0fcoHZExDcNzBCJWqiJ3+fGV+GFQT2+vRX9xkUUcA+NBlQg88F07?=
 =?us-ascii?Q?+hgoXVAhE7dides3VD/A4M8c2OZQHSTJ9NRuY576ai9HS8XGO5S+064CuqCo?=
 =?us-ascii?Q?qdlH6ffwHnjLgBSm8ua4MY6OkMRXJmuuT7wSEi70uymnHQeHFcjOO/iXcRUG?=
 =?us-ascii?Q?ncadYaRam3638sXZnOCLiW8DCxgTC/MkxFglZw3/wI6WqOapyab8GdwPbvo0?=
 =?us-ascii?Q?cYOKatOYAWnObyMKWmHsuH+QRHPrt48J1PLKbJUk9xl3YnMcFpusns+XJoZ5?=
 =?us-ascii?Q?eC8lOINWgC/LBILDuIcf5E9VMhygb2CHvaCMkV/sb3NKBvtpZ01Z/RseCt9V?=
 =?us-ascii?Q?ntOG8G69CxMsE0e12XyZXt5/0y4CRRvrmtkyCT4WGTk6onV0RzjHFyFfeNOD?=
 =?us-ascii?Q?3rCDKEIC2MurJ2Q3I9FpEW3qniKs7uzF+n3LJ6H3cziDajo/W9j4t5kHq+xN?=
 =?us-ascii?Q?OcfeyMnD1BQv10V1rEfWN1xSNJAId4UQCh65FjEBp2WtHShtG8s2N8naqb9o?=
 =?us-ascii?Q?sE1gGcSx43qJvt0K0PHtbfxtDjQ+H3QjekXPzYAJEeKODG1Px+DhbRCztdJZ?=
 =?us-ascii?Q?NtWDgP9IPMU2xyKkyHyYH1WOLawjcl3Jt4ObHQCC1fGKEPG6Lf+5sho/d3R8?=
 =?us-ascii?Q?tpHduva1KNJA6QH3oENPkVmoof/2kBXwxSaiPDgiL9BcaGetig0A6aae756G?=
 =?us-ascii?Q?6I2VPNhebJXrH9bNnFFW2il43sdbP566DFlQA9mQapQCJuvAnXbbkz2dM5fx?=
 =?us-ascii?Q?mx5WJu3IelrWbepAfqtNU/M60S4JtpTPLVrTUdJaB2vMrGdMrJcNtlQIXvFc?=
 =?us-ascii?Q?/Gwcp4AP7p1DAaZ6AXBz8d+Y776tJQxfB7j971cRaWOk1Usflb9ECrOd/Sh4?=
 =?us-ascii?Q?KAt9HQqe+7NTnidPZ/0/5meMY6i+iFM+rFUfRM7m4DyezRs1zZUkcCqdidzx?=
 =?us-ascii?Q?/Oj/+C87ltU+YNzUZcA7blcSMgwBkOEsNm8qcO51lhU73i2Ua0KkIDmmN3o6?=
 =?us-ascii?Q?VXEG5BW010ENdS3qHO3uTSt2XwoF5o5L2lM1VAriZnzALZ+gYjhh8jCPpFOn?=
 =?us-ascii?Q?uIG8+5B3qq/bkhewg2S/bHXno6a1pImxSqVYb7eonCIh+1TRh57/RNpQmzp5?=
 =?us-ascii?Q?K7M7tx5M0EP8moHUIhb3Li2DCoFkYMuw1+fW3rScs3vVR+ERBwPFaF6VdI3F?=
 =?us-ascii?Q?qrz1BGspN8E+Vuap696LxuBWxkCeMj27wIgeJ1bcfJWTcSwB5Nwun3GPQcRt?=
 =?us-ascii?Q?7j8PW4ZACSc/2knb1FHRKe8Sc+znpO3WjMP226mnUaKgRVtnSNrm2Kaohx7+?=
 =?us-ascii?Q?nE6jLrPF9L+4tgSaQhSMHkgXAFEMehvKxeKDE63npdQuwEp/2MBE8bumfrOP?=
 =?us-ascii?Q?bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d8c331-149e-4d89-507d-08de208ebb58
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 19:24:13.6547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mWqFvwYVEcu5i1ofPfqYLwI2ZUICOfUyrilDl1pjWID6WNOH+0qSVs3GYsMAAdnuGDymcqnRsqRu4KphDr2gW2ICMXHu19VYrchoefI5GsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7568
X-OriginatorOrg: intel.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 10, 2025 at 07:40:28PM +0100, Andy Shevchenko
 wrote: >Use %ptSp instead of open coded variants to print content of >struct
 timespec64 in human readable format. > >Signed-off-by: Andy Shevc [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vIXV7-0004Zv-Vl
X-Mailman-Approved-At: Tue, 11 Nov 2025 00:30:02 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 09/23] drm/xe: Switch to use
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
Cc: Andrew Lunn <andrew@lunn.ch>, Takashi Iwai <tiwai@suse.de>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, linux-sound@vger.kernel.org,
 Stefan Haberland <sth@linux.ibm.com>, Rob Clark <robin.clark@oss.qualcomm.com>,
 Sean Paul <sean@poorly.run>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 freedreno@lists.freedesktop.org, Jan
 Hoeppner <hoeppner@linux.ibm.com>, linux-doc@vger.kernel.org,
 Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay
 Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-arm-msm@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Casey Schaufler <casey@schaufler-ca.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, linux-trace-kernel@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Konrad
 Dybcio <konradybcio@kernel.org>, Steven
 Rostedt <rostedt@goodmis.org>, Corey Minyard <corey@minyard.net>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rodolfo
 Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>, Laurent
 Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Xiubo Li <xiubli@redhat.com>, intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 10, 2025 at 07:40:28PM +0100, Andy Shevchenko wrote:
>Use %ptSp instead of open coded variants to print content of
>struct timespec64 in human readable format.
>
>Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks,
Lucas De Marchi

>---
> drivers/gpu/drm/xe/xe_devcoredump.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/xe_devcoredump.c b/drivers/gpu/drm/xe/xe_devcoredump.c
>index 203e3038cc81..d444eda65ca6 100644
>--- a/drivers/gpu/drm/xe/xe_devcoredump.c
>+++ b/drivers/gpu/drm/xe/xe_devcoredump.c
>@@ -106,9 +106,9 @@ static ssize_t __xe_devcoredump_read(char *buffer, ssize_t count,
> 	drm_puts(&p, "module: " KBUILD_MODNAME "\n");
>
> 	ts = ktime_to_timespec64(ss->snapshot_time);
>-	drm_printf(&p, "Snapshot time: %lld.%09ld\n", ts.tv_sec, ts.tv_nsec);
>+	drm_printf(&p, "Snapshot time: %ptSp\n", &ts);
> 	ts = ktime_to_timespec64(ss->boot_time);
>-	drm_printf(&p, "Uptime: %lld.%09ld\n", ts.tv_sec, ts.tv_nsec);
>+	drm_printf(&p, "Uptime: %ptSp\n", &ts);
> 	drm_printf(&p, "Process: %s [%d]\n", ss->process_name, ss->pid);
> 	xe_device_snapshot_print(xe, &p);
>
>-- 
>2.50.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

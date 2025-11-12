Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE92C53494
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Nov 2025 17:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yIuKeZRPWJLcPHpR9dnU/fDD9gE9YPLptclq/prHQOk=; b=BoKEp+yBsyQSbPGgwaqeNd5c7z
	BxH9OGdb80/BfqWCj8Nasc1JEUC6eR5rtTYSdpz9lSKgaCsnno6/TXEf8PQI8Rmw/ElSCW3x443r2
	QZCZege5lUCnFYSmuI3SZaOAzIzNsJQY3466AFoNRFEvv7aPGasOHAFjMBH+D75XcC4U=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJDOU-0007uj-AK;
	Wed, 12 Nov 2025 16:08:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aleksandr.loktionov@intel.com>) id 1vJAa0-0007Vz-GX
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Nov 2025 13:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+He0JKHwNRfFkUXMs/gw6414DItcEqwBVsiweZMelus=; b=eFMd+oTgD9r5tE+aMPpORnfsX8
 ExzHv8mo9Qqz52EPOyUGeKnm0KKvAVrLi1XhaAG5URON7Z7cRHGs3m+KK/iqcQ9XxcauJmxTcXQdP
 vLyo6FtT/lsGYZ89Q7rlqv+BDYTC7v0Ydi82Ihi1H/px+bWx3iNuxPBmZSEMAtRvyXpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+He0JKHwNRfFkUXMs/gw6414DItcEqwBVsiweZMelus=; b=S6zeFxspWo1lBqb5Jrh6Qpcc/V
 h5u+pyQqswYaK3I8co6aWEHwCBVcFK5+0fLfc5XGYJrFMh8t5J4nJ5adWySAhRrX2UjfWxrwmytDz
 zngqga+zvhwdnteqeT9Ynf/ksi7JP01WJsxTz+QWhRAtdlkPQHVGMm5+71ZcFyaTH8X4=;
Received: from mgamail.intel.com ([198.175.65.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJAZz-0005l9-Jh for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Nov 2025 13:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762952888; x=1794488888;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mb1Bj19rSfimNr2BM/TuxfUxNEi5wXSShmC2fhFvnNc=;
 b=MF0ZHQBU8sgzxBDDKLzFY0LIYTeTzUJnottuKryp8qvspNq3JvP7jWHP
 bkS7YWPVAGLZ017t+NcPc5nGUsG+aqWHAaSztUfNBT1hioc+RGxJdSo2X
 8Das0bMP45sbeFTd4ZQGnNFN+AMJ5OY+wiulsIAu6H46NaojEivKU5RAP
 Et0iYtEzZ0/kMSwIxVDsTNv36RicHABmthK5/m3rzcriSGu7RXDgjNVXZ
 xOEXNcfFJ+CnMtYneqdWYu6sRSp1nbE5rLKa9SgCuMC8d7a9bepAYJbok
 e/1Jsn7vQxfgIDTd+27VECt9nSTCmN49pEwAZhrnb+Ojr8pq9nSTlAag4 A==;
X-CSE-ConnectionGUID: OhQNSh6zTmCevZGFuFT4Ng==
X-CSE-MsgGUID: BwhbDCzlTcG295CkmT27fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64896673"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="64896673"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:08:01 -0800
X-CSE-ConnectionGUID: 87Wy+9BAStyEcZQAhoYfTw==
X-CSE-MsgGUID: NKTLzhD0TlSrdZ3BjEWk5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="189192400"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:08:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:08:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 05:08:00 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.27)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:08:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bctvslf9uAmO6LVk6cLn1F07877WZNp2U1nTbBfhzoOEEWWAJZCuenYAj+E9ATBHhGln5fAC29Y3v/EfOPjLGXVWXU1TgM+b/9HI9FOopqpopoaQjP44t1fV/foo8TUF6wpoSJ7h6PM0ZUMKgrHHG2cZJdpPIsLRLEDP7blhlTHmrt3lVy7p5qa5o6d5mrztw+TfMSEdf4v+hUM3Quzbqj13XLRNSuVERAEo1w8/46F1o9L/ng9iLdW037lVEKXyu3JECIuPisokipLtiRu7Qskk1fM95epATDcLrVTmhkhOk/b0u/Ls3s8+vQx+VclWnYuURh0SB/dvjxozzkSH6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+He0JKHwNRfFkUXMs/gw6414DItcEqwBVsiweZMelus=;
 b=CwkhCL610JfjeffNrW63fwUr/Nvh5AEN3JrZSrTAt2GeL5bHNCP8EkNHPWmt3NslVeQk6/AsR28vOOf8V9lvsIpLahQHH0T6JBsCRqdHc7gIFc54RBRvZhJxYRiISO/BJnR3xasqQn8B/LMtCj6CbwueQkCT/RXBQVeVuYxoPdemv41fH5hE5oEQ7LmjTpruiBAkqaoCw5rFU3NcMsoOm7XmwULi6hXX+EhkJNgjAWeeVnNh2M5s67h30KCpSiCIj9Om8oY6Vymv1XxV8bmkDE8dGRRzssmcTk3Jm+gr/BrwMPtA8ckJA/KxrStHvJO9QT7kGoCoHbbJ1kINsse1DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6128.namprd11.prod.outlook.com (2603:10b6:8:9c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.15; Wed, 12 Nov 2025 13:07:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 13:07:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Corey Minyard
 <corey@minyard.net>, =?iso-8859-2?Q?Christian_K=F6nig?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, "Brost, Matthew"
 <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, 
 Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, "Vadim
 Fedorenko" <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar
 <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, "Casey
 Schaufler" <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>,
 Petr Mladek <pmladek@suse.com>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org"
 <linaro-mm-sig@lists.linaro.org>, "amd-gfx@lists.freedesktop.org"
 <amd-gfx@lists.freedesktop.org>, "linux-arm-msm@vger.kernel.org"
 <linux-arm-msm@vger.kernel.org>, "freedreno@lists.freedesktop.org"
 <freedreno@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "linux-staging@lists.linux.dev"
 <linux-staging@lists.linux.dev>, "ceph-devel@vger.kernel.org"
 <ceph-devel@vger.kernel.org>, "linux-trace-kernel@vger.kernel.org"
 <linux-trace-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 09/21] e1000e: Switch to use %ptSp
Thread-Index: AQHcUwa0J2CvCRf/ME+WZDB2JQIFo7TvBJOg
Date: Wed, 12 Nov 2025 13:07:54 +0000
Message-ID: <IA3PR11MB89868413E1F3C7F5793ECB3FE5CCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
 <20251111122735.880607-10-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251111122735.880607-10-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: 3a3dd84b-2201-416c-b63d-08de21ec7e67
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?3sXmqmBPnfs2n6v+QTVhjEZBknMKm66SiA7h5/IajrMwrnBSCzWdQ5sXa7?=
 =?iso-8859-2?Q?EWJigVZjZg4WqvEu+tBVOrcsjR2RbVDazxcFBWqnvaFdudW9Edu3mS9rQw?=
 =?iso-8859-2?Q?OoRZkC4ZmYF02yvBGmR5f0T1E2fC7acs5ETJQnq+S2f7OLBez0RlvDVCoq?=
 =?iso-8859-2?Q?uqeR0lySAI7IMfjrU9wpAonS9DBwXQhwySL/jFvKrbHVwYLMNkjXmnzuMc?=
 =?iso-8859-2?Q?bzBxsyme3oxIgGMR1MlTOmpi5YI/lXa0hzmjBgHshcMSUbTz7igHf36CRc?=
 =?iso-8859-2?Q?/dhLuQW9Fw1qFVAOgpCQf17PxUotRO0NbPLDDwrXUj7QsPRZCM/faGj5j9?=
 =?iso-8859-2?Q?vJzZO9GNEoNIWNsH5PKN4V0fHSYZTmE2FDYj97395B60ZpUSvC5GbVr9G1?=
 =?iso-8859-2?Q?wbAVU+seoyvlWmJmrDe97Ybpsq6Ix/b2EkhFGFmVUQhAdNcjUXbojnJSJd?=
 =?iso-8859-2?Q?V+D+Neo395HPacd4MJ+NmhvmF3fJy/Xgkn8F2fbE1DK8J68++zW8IrGnpB?=
 =?iso-8859-2?Q?R+lCJaUCqgxz8Xl4uAsa2rOI0qWKMaQRLVitMsyEId/ECbZja/kbTWstW9?=
 =?iso-8859-2?Q?rgRdOJhnpf0E004EhNp3feFQec5am2Te8rb6psCXgMe5atdKj5N3F9uyXx?=
 =?iso-8859-2?Q?MIAo7n/kQdXrJ3h3tbM73JLS0OFg/ya7LSKh6F2MQ0jjrQiEKKVQFIhmHJ?=
 =?iso-8859-2?Q?jiWwLuV2xXpE5CDoniIHQAYxQTJvhI1KpQpYc1ou42WkD2rN5/XbvrX1NQ?=
 =?iso-8859-2?Q?k3eqLnKe84AGzHsnNA/g7+/so8LjQxu1L+fJbTpirTRpfvMR23i2aqi+UJ?=
 =?iso-8859-2?Q?2J8QhaXPMpjLQVv2+6dSuPrIy39u0HX9mS1ly7qVkKNUMaO+3kQ/9qJvj4?=
 =?iso-8859-2?Q?f0iPsq3luDtYOdpLvxnZFhGQfm3vv6z1xSQA+zgEodJNzVmF+ec+w/+q8a?=
 =?iso-8859-2?Q?HYphAamXFyEZqhl/rsSQBk6MbhY8/smKEXF3bmUA7Xjao/Pq/dcCHH/yPS?=
 =?iso-8859-2?Q?3jrjiev7EVPXp3FAXF9QUUSE4op9QsMnjQhqnkH5TZfTYbQgqpFgHQPboA?=
 =?iso-8859-2?Q?Xuiyw/q4PtZGAXUjwS0v3wj5dYHdyHnhrITCqhTIsomayV5ca7IxPy2S20?=
 =?iso-8859-2?Q?2qaq5c/YVT3uRwQA0GnfPIlTXEzel8mXeCHRrvRgKn8Uug7ug9L+Zwftoy?=
 =?iso-8859-2?Q?46vtDhcCyOwBONnxxbD8VAIriveBQsFlteNaEmwy9CSVEOrq8KhujPMH23?=
 =?iso-8859-2?Q?xRrAx+RKki7GK5/SojVanNu78tQCHoCx0ygteOdfVpTEuY5tmQOwCvtUWI?=
 =?iso-8859-2?Q?vBUvXyse+98CiSmrDvw5k4anKV1uBg+dd6vMwXmuRqoD8KZ/1IoRk21wH1?=
 =?iso-8859-2?Q?8jYLQPWk7qW4huDmzp/jCM5/6nlUZecYamZCrspiyiJiJ33ewL2G1X/kNr?=
 =?iso-8859-2?Q?qeUoyyuy628H89Zb1p7FbZkK6nRSboUY8q1dY5x6Ip9r7HtZApUoRnDPWb?=
 =?iso-8859-2?Q?r2xMLpf+gFhYpfOwE3b+twFIyxo5hLj3s5hCxlzygvuoZJ0UIlYvnpugl8?=
 =?iso-8859-2?Q?pSmkTNxgoFWMfqka1M/sXXf+rhuL6ytEX3TnX9QTb5YEhQQksw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?GPQQ+FddiDSmqqqY2U4Lif65spO+BvG6ifqwhw0a04aLRYmYLcerde1g/U?=
 =?iso-8859-2?Q?C6pjIeTnxQU8yV7eg91W5UALu3LUiXE/Buyp3VEBMySAL60RHgAJEYvx6C?=
 =?iso-8859-2?Q?xoxAZ7EriN9jUfxZs3d25fKxIfByEil9NWz8oLIZksckPgmPeXZq3juQ2/?=
 =?iso-8859-2?Q?RYqLmKhruOTrmyV0syYODTJrScBlvmJ+84KlFJeuh0x5BtrnOpmM1o3vor?=
 =?iso-8859-2?Q?c0FvfNaGEf0J44U6zfVWnrVs6GB7eHuBlUl7mM4eOF7cd0gCGu3w53xvEs?=
 =?iso-8859-2?Q?F5jiW6Us2t88mjb0Dq3pvzWGjs01DMhnKrcXvtrXaVu4PT1fDkFZaB6Htq?=
 =?iso-8859-2?Q?zTd4zibkYe82qJYfSyGXejXmcmg/BfmXKMtMFxsmNb1hMf6UTAdEdOSG+U?=
 =?iso-8859-2?Q?Ik+DH7DEYnHLJfjqIaROFQe60etDJtb2v3+WBe65FVfzfsuoTPCcfYKamN?=
 =?iso-8859-2?Q?uvy4DnIup4D3UWUMg8yfhtvfVa6W4mlP/mal8lSTZmSqcorYMbkJGABOQ9?=
 =?iso-8859-2?Q?jo13SRBBHSsKTKB2AhV+E+xm9HhV+GaaxNu5AUkNRMgG3lIC4VChUerYXo?=
 =?iso-8859-2?Q?39aZyiUAEGqOtPX3/W3iPGYOZyKcfQ22wGzVCxbs6kV/9/aFVEsc9+xtJ6?=
 =?iso-8859-2?Q?s1aVmwlW18TU1AVGlhiagzkik/8p1iqTxvwLsm6kF9QdvKyMF6V4QExshF?=
 =?iso-8859-2?Q?JCLh/rth6z8DEk9GEwtZr5BO8Ni9FqbuU3/ct1LZU0lUk1ZFrjUMo+Kipw?=
 =?iso-8859-2?Q?yGmUAXIhtAf1D9+56MvjnMgCXAVcGUhbPrT2XuBxZ+xkE/kmRxqcAH46dK?=
 =?iso-8859-2?Q?XBXx9KwwV0Sg7RJoxBP/AriyEW8j7Y8LNJKkWlz7J0sBWe5ZywklJWZC/X?=
 =?iso-8859-2?Q?N3gpJUPXuem5ivecOPzhgx+ujKjgtL+31bOe46bLFYu3uxADQixRcO0uVF?=
 =?iso-8859-2?Q?Nb0SembweP8GLMyK4LyM4xxU4TQ622axfZ4gUEiTbrQtD4FpEXalNYG7E0?=
 =?iso-8859-2?Q?zPRd9sBQF8UsU7MvNMz0DZX3nV2nZhWeo38VHogbVzaezAr+trHuYvTs1a?=
 =?iso-8859-2?Q?A2zJAZ6tSKZMzlqVpcLK2PRDpODwkgTpZS5grK+39KEjAORKW+osftBe08?=
 =?iso-8859-2?Q?qzHD68Hm+YN2AXeZeqSrzdUwEJVqTU4P/vq0CAL0q3TkGe4SG8pJ35hpe1?=
 =?iso-8859-2?Q?BhBRR6SEggFE/yFCr1gnUGgXDxARUTd2oXCcMPzfqOwC5R4s1q0SdEIwVX?=
 =?iso-8859-2?Q?ofpt0cn/ZzAjomBzXFKIUyG903wIo5vN9Vrjag8qSCYjEkGv6RkTBDfddo?=
 =?iso-8859-2?Q?KoCb0NW6pGoOSrvrfEmMSPAvGh1TPp7yohKdw2vZd9wxtmmePpe59NMJfz?=
 =?iso-8859-2?Q?NmcCg4h1EjZLoio3HOS7LcaeP0mHDv2qzghTNDnW4Laox8+0K1gyl6Du1J?=
 =?iso-8859-2?Q?7vcKzJ1SS209Nrbx5Uw0a7ppNDlFvtFGF00d5t/SltsUSu0kLFxlIg4RjM?=
 =?iso-8859-2?Q?fkOAANTeQTvfXlHGyQjCHpFjq1vZbideCQ1ThKmcfQH8Ovr4h5ZXyWk/xK?=
 =?iso-8859-2?Q?la5Lz5DWNB/P7O3F2HhJS+fkFFZFnIj0NthhElwBt6GKqqXIiQpI9hiTLy?=
 =?iso-8859-2?Q?e1ooHe97PDT+yD1Mm3UM7WFEtHKFKNX5Qsd/bRxRcnt8iTkJE7MmyktA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a3dd84b-2201-416c-b63d-08de21ec7e67
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 13:07:54.9747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BxfxWKp+SC6aEUjMkfQJJksWX5hM2VDCZsDP3MmuQz7OxEW+JTH5J4AkYmO80ARAYEcW5QKoECfFmXcbmiSpLI5CHafn7t4e/k2PdhPB6Ws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
X-OriginatorOrg: intel.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJAZz-0005l9-Jh
X-Mailman-Approved-At: Wed, 12 Nov 2025 16:08:24 +0000
Subject: Re: [Openipmi-developer] [Intel-wired-lan] [PATCH v2 09/21] e1000e:
 Switch to use %ptSp
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jan
 Hoeppner <hoeppner@linux.ibm.com>, Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David
 Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?iso-8859-2?Q?Krzysztof_Wilczy=F1ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo
 Li <xiubli@redhat.com>, Jonathan Corbet <corbet@lwn.net>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad
 Dybcio <konradybcio@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 =?iso-8859-2?Q?Thomas_Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Bjorn
 Helgaas <bhelgaas@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sean Paul <sean@poorly.run>, Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Baddela,
 Sesidhar" <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Andy Shevchenko
> Sent: Tuesday, November 11, 2025 1:20 PM
> To: Corey Minyard <corey@minyard.net>; Christian K=F6nig
> <christian.koenig@amd.com>; Dr. David Alan Gilbert
> <linux@treblig.org>; Alex Deucher <alexander.deucher@amd.com>; Thomas
> Zimmermann <tzimmermann@suse.de>; Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com>; Rob Clark
> <robin.clark@oss.qualcomm.com>; Brost, Matthew
> <matthew.brost@intel.com>; Ulf Hansson <ulf.hansson@linaro.org>; Andy
> Shevchenko <andriy.shevchenko@linux.intel.com>; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>; Manivannan Sadhasivam <mani@kernel.org>;
> Niklas Cassel <cassel@kernel.org>; Calvin Owens <calvin@wbinvd.org>;
> Vadim Fedorenko <vadim.fedorenko@linux.dev>; Sagi Maimon
> <maimon.sagi@gmail.com>; Martin K. Petersen
> <martin.petersen@oracle.com>; Karan Tilak Kumar <kartilak@cisco.com>;
> Hans Verkuil <hverkuil+cisco@kernel.org>; Casey Schaufler
> <casey@schaufler-ca.com>; Steven Rostedt <rostedt@goodmis.org>; Petr
> Mladek <pmladek@suse.com>; Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>;
> Max Kellermann <max.kellermann@ionos.com>; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; openipmi-
> developer@lists.sourceforge.net; linux-media@vger.kernel.org; dri-
> devel@lists.freedesktop.org; linaro-mm-sig@lists.linaro.org; amd-
> gfx@lists.freedesktop.org; linux-arm-msm@vger.kernel.org;
> freedreno@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> linux-mmc@vger.kernel.org; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-pci@vger.kernel.org; linux-
> s390@vger.kernel.org; linux-scsi@vger.kernel.org; linux-
> staging@lists.linux.dev; ceph-devel@vger.kernel.org; linux-trace-
> kernel@vger.kernel.org
> Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>; Sergey Senozhatsky
> <senozhatsky@chromium.org>; Jonathan Corbet <corbet@lwn.net>; Sumit
> Semwal <sumit.semwal@linaro.org>; Gustavo Padovan
> <gustavo@padovan.org>; David Airlie <airlied@gmail.com>; Simona Vetter
> <simona@ffwll.ch>; Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com>; Maxime Ripard
> <mripard@kernel.org>; Dmitry Baryshkov <lumag@kernel.org>; Abhinav
> Kumar <abhinav.kumar@linux.dev>; Jessica Zhang
> <jesszhan0024@gmail.com>; Sean Paul <sean@poorly.run>; Marijn Suijten
> <marijn.suijten@somainline.org>; Konrad Dybcio
> <konradybcio@kernel.org>; De Marchi, Lucas <lucas.demarchi@intel.com>;
> Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Vladimir Oltean <olteanv@gmail.com>; Andrew
> Lunn <andrew@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Krzysztof Wilczy=F1ski
> <kwilczynski@kernel.org>; Kishon Vijay Abraham I <kishon@kernel.org>;
> Bjorn Helgaas <bhelgaas@google.com>; Rodolfo Giometti
> <giometti@enneenne.com>; Richard Cochran <richardcochran@gmail.com>;
> Jonathan Lemon <jonathan.lemon@gmail.com>; Stefan Haberland
> <sth@linux.ibm.com>; Jan Hoeppner <hoeppner@linux.ibm.com>; Heiko
> Carstens <hca@linux.ibm.com>; Vasily Gorbik <gor@linux.ibm.com>;
> Alexander Gordeev <agordeev@linux.ibm.com>; Christian Borntraeger
> <borntraeger@linux.ibm.com>; Sven Schnelle <svens@linux.ibm.com>;
> Satish Kharat <satishkh@cisco.com>; Baddela, Sesidhar
> <sebaddel@cisco.com>; James E.J. Bottomley
> <James.Bottomley@HansenPartnership.com>; Mauro Carvalho Chehab
> <mchehab@kernel.org>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>;
> Xiubo Li <xiubli@redhat.com>; Ilya Dryomov <idryomov@gmail.com>;
> Masami Hiramatsu <mhiramat@kernel.org>; Mathieu Desnoyers
> <mathieu.desnoyers@efficios.com>; Andrew Morton <akpm@linux-
> foundation.org>
> Subject: [Intel-wired-lan] [PATCH v2 09/21] e1000e: Switch to use
> %ptSp
> =

> Use %ptSp instead of open coded variants to print content of struct
> timespec64 in human readable format.
> =

> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ptp.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c
> b/drivers/net/ethernet/intel/e1000e/ptp.c
> index ea3c3eb2ef20..ec39e35f3857 100644
> --- a/drivers/net/ethernet/intel/e1000e/ptp.c
> +++ b/drivers/net/ethernet/intel/e1000e/ptp.c
> @@ -229,14 +229,11 @@ static void e1000e_systim_overflow_work(struct
> work_struct *work)
> =

> systim_overflow_work.work);
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	struct timespec64 ts;
> -	u64 ns;
> =

>  	/* Update the timecounter */
> -	ns =3D timecounter_read(&adapter->tc);
> +	ts =3D ns_to_timespec64(timecounter_read(&adapter->tc));
> =

> -	ts =3D ns_to_timespec64(ns);
> -	e_dbg("SYSTIM overflow check at %lld.%09lu\n",
> -	      (long long) ts.tv_sec, ts.tv_nsec);
> +	e_dbg("SYSTIM overflow check at %ptSp\n", &ts);
> =

>  	schedule_delayed_work(&adapter->systim_overflow_work,
>  			      E1000_SYSTIM_OVERFLOW_PERIOD);
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

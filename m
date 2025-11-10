Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FC2C49DE0
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 01:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PQIkS0MPue4J7dvLKMgQ3MLoGCM0/3q31O4UAUhIwFA=; b=OMDB77Be04ITkUDTIKIihe+Mws
	paAgJit8TPGhpkISB7amPOGkrKrP1ANcN2MK4K93vl9KwD8U/VZYZZ9UnI9aDfCxqjnKLbmhKylxu
	0T5qnjhFJi7xfiMHg3n/iANvtMo+9TWgG8SIyTfVmXq4flMo/uL2JMJiDsIXVfRB6XEI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIcGq-0005ec-Hj;
	Tue, 11 Nov 2025 00:30:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Slava.Dubeyko@ibm.com>) id 1vIYer-000407-K3
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 20:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:CC:To:From:
 Sender:Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kUv3d/PJA8WPa6iavIQEVQdshmFYx0CYQfpCl2kze0M=; b=kVVIB4kjTNbZcd6jiIT1sjnrcU
 kK2acu15JFdEiCnuwvHI6eZK4i6K1294K10nXjJAqGT/0CKBQrFvUsLKtSJNmHuIPsHAsz4NhlX31
 C95pM24SNJ/Ob/Mf/DV4Hxe3Bg1WrpD9ZLdgon/ea4qUiBnQdCJ64sKFVLoXsQntQrcc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kUv3d/PJA8WPa6iavIQEVQdshmFYx0CYQfpCl2kze0M=; b=AX26jNrgOr3CQJN4yE93yIzFUF
 VUwH84zuZ3QaBNEjbhOWF7auKuKvib99bgTjuuQS0MsMBKoyyRT0RXo4ZTXzUk2YCeFOU959rekbp
 WH6Z96k1k1qYJ4MNaKlGxQ18cHlJTbG0svlxv8ookI8hrDUYGn88nczEbayBcJ4VOIYQ=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIYeq-0008Av-Tw for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 20:38:37 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AAEiVuL005929;
 Mon, 10 Nov 2025 19:12:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-id:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 pp1; bh=kUv3d/PJA8WPa6iavIQEVQdshmFYx0CYQfpCl2kze0M=; b=sMvwPWUD
 hkSbYS98OOIfWYdoY58wFair39hPOE8UnXLgZ1vGCDZAOJ8waIHh9otaoy+42qv1
 D1rZd3Ki3ZIukUwdoasLt8sjwufmkrmolbeDLy7bw3Kf9cCtZfuQZdbacSHQp5NF
 L03awHefUE3qlNR0LTRHeBYYb+lTs0j3m7wlgxHRK7pjQpz2sNKGIysBjFmIW+aN
 So0PFV1ImX5nFsrL5T0Avc0yL5p8M8lfJ1D+pqQ11DoO4WNptRmib4kOnfhQqCh5
 npPzeCbg8S8ltza2nN1bXUY/TrRe2n3pFwZBaJA+ZZ7BYltdDcVL8mpwx2G6wAPW
 SJNvuAEKnmEGsg==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4a9wc71vvv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Nov 2025 19:12:43 +0000 (GMT)
Received: from m0360083.ppops.net (m0360083.ppops.net [127.0.0.1])
 by pps.reinject (8.18.1.12/8.18.0.8) with ESMTP id 5AAJ9ldW007231;
 Mon, 10 Nov 2025 19:12:42 GMT
Received: from cy3pr05cu001.outbound.protection.outlook.com
 (mail-westcentralusazon11013042.outbound.protection.outlook.com
 [40.93.201.42])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4a9wc71vvr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Nov 2025 19:12:42 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VwT8Vb96JX38U0umdWU/Bk+6/gatSPkHpp6Kup3gkRwX5WfHQgmpmJCUux7x1i6/Fi+BX0oFfv5thd7Qh6gcIrvIlWYBfLqQBqGP2VxEPtbS5NUKwHQhOQ03/wqtTjq44NaafEkoEwYfw7QTHWOSz7D/DpWMECYTdPTSI8ge3qOFVqLPqIeHt9GOkxGOqgWBvTpRLT6N47USXFFyaODMpqeNEN/FlCbvqu7bONenlo4oj5IwaaZ8/X2lgIS8VHUhJWK5iKTuw0loFUdZvhfw7OGzrMlwVFIwT7LWNg1nMYwaBnzLyibYnD2arsHiRri28C6cu0dz6QNYMrSzgpheow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUv3d/PJA8WPa6iavIQEVQdshmFYx0CYQfpCl2kze0M=;
 b=NZQ3s3v0iD9lJTaP26NBl3CVuE9ifwlAvh/+Y3+aI6pF0mcci9+NbYVtaS/mZlbshWZWQvUU27tPf5l0eZup0N+LjkWAp262lfYwgwqnZaYc1jf/XkimKv2PW56ofXPZS1ZeXuKWVQ1SBvCi+naTkSgdjL5qJ4xTTGUBP+soC6ApwEkDGuVE8IaaL7rvMco009rottB4XD4VhjrBy1vRBvjRj/rAahIMl1YjeLmfF9qdVvN61jnWQavwTV2qPYzmhPEQhk3v/uaHeV5ccJudo0o3wRetmWvZVOg3YdfdumDrE3WkvnEKv5yJ7G5zXgqds3I2riP6m+E35hPjJvpiCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ibm.com; dmarc=pass action=none header.from=ibm.com; dkim=pass
 header.d=ibm.com; arc=none
Received: from SA1PR15MB5819.namprd15.prod.outlook.com (2603:10b6:806:338::8)
 by CH0PR15MB6293.namprd15.prod.outlook.com (2603:10b6:610:185::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 19:12:38 +0000
Received: from SA1PR15MB5819.namprd15.prod.outlook.com
 ([fe80::920c:d2ba:5432:b539]) by SA1PR15MB5819.namprd15.prod.outlook.com
 ([fe80::920c:d2ba:5432:b539%4]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 19:12:38 +0000
To: "casey@schaufler-ca.com" <casey@schaufler-ca.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "mani@kernel.org" <mani@kernel.org>, "pmladek@suse.com" <pmladek@suse.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 "dmitry.baryshkov@oss.qualcomm.com" <dmitry.baryshkov@oss.qualcomm.com>,
 "vitaly.lifshits@intel.com" <vitaly.lifshits@intel.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "max.kellermann@ionos.com" <max.kellermann@ionos.com>,
 "kartilak@cisco.com" <kartilak@cisco.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-trace-kernel@vger.kernel.org" <linux-trace-kernel@vger.kernel.org>,
 "corey@minyard.net" <corey@minyard.net>, "hverkuil@kernel.org"
 <hverkuil@kernel.org>, "calvin@wbinvd.org" <calvin@wbinvd.org>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "linux@treblig.org"
 <linux@treblig.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>, "matthew.brost@intel.com"
 <matthew.brost@intel.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "andriy.shevchenko@linux.intel.com"
 <andriy.shevchenko@linux.intel.com>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "freedreno@lists.freedesktop.org"
 <freedreno@lists.freedesktop.org>, "alexander.deucher@amd.com"
 <alexander.deucher@amd.com>,
 "maimon.sagi@gmail.com" <maimon.sagi@gmail.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tiwai@suse.de" <tiwai@suse.de>, "cassel@kernel.org" <cassel@kernel.org>,
 "robin.clark@oss.qualcomm.com" <robin.clark@oss.qualcomm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Thread-Topic: [EXTERNAL] [PATCH v1 03/23] ceph: Switch to use %ptSp
Thread-Index: AQHcUnN3d/v3h0NBK0GprZn6lraKLrTsRwyA
Date: Mon, 10 Nov 2025 19:12:38 +0000
Message-ID: <ba4fd8ffa0468ce1ec2b4c5d6b249922758bc648.camel@ibm.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-4-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251110184727.666591-4-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR15MB5819:EE_|CH0PR15MB6293:EE_
x-ms-office365-filtering-correlation-id: bf4f4d4c-2927-476d-5406-08de208d1d06
x-ld-processed: fcf67057-50c9-4ad4-98f3-ffca64add9e9,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WWNUNXRVaGFKUFVkcW5BMER1d3IrRjhIYzN2QmtVYVd5TWRsc09Sb0RycXlt?=
 =?utf-8?B?ZjZOQzFSWkpPTDV3NVhGUUJEdEtibmNEUkFpakJoT1JxZXFMTUNMS3J3RGJ4?=
 =?utf-8?B?NVQxbUJpaFBSZmZ4TEd1UDAyT0ZmL2ZFU2pBTXFsUXdEUXcyRjRyeVhjQWJM?=
 =?utf-8?B?aEZEU0pOU05yYjl2bmNIUGZLdFEwbzVqaFo5Zk03SCtXbFZHVkprUTU0WTRx?=
 =?utf-8?B?KzNudXAydW1GaktqcllQdERsdTUwOVYrQnR0RGNZZm1hYlRoV2plK1lkcjVn?=
 =?utf-8?B?c2NVU1d5cTJxaHd6MHl2M2tlK3dkSFArd1k2cytIMExFeEl2aFcxbVkyK0ZO?=
 =?utf-8?B?UHUxdG1FVGRsd2c2UkZwSWtOYmxYa09xN2UzMU9MNmREWmZ1czlRK25mbGtY?=
 =?utf-8?B?ZzA5THk4T25nblJ0YzArUEU4ZzUyelBER0FUN0Mzclhhd3BvQmRnVGtvOUQx?=
 =?utf-8?B?S2NGeThGVWF4MXRETkRYbjVLdnk4MldkUjlLZVduTkZ4cWVONnkwRVQ5bGFl?=
 =?utf-8?B?dTJrQllWVXJMNzN0Z0ZSem9yS1pHRVhMVG5JYzlLK3Rla0ZQd2NYbUJjS1hx?=
 =?utf-8?B?S3VLa29aVU9QRFBsQ3BjNGR0aVZ6ckdmVDFiaGhBMFpnVFRpd0xqQS85QzE0?=
 =?utf-8?B?dFBoYXAwTUdpSTVqdHpyWlh2NWxuWmpOQmFseCtLY0FWVytyYXJkWnhqaXZ5?=
 =?utf-8?B?amxrNGxTcmpNdmRQZkdQVGVXWXQyWkpXM1RpdEtaVXVBb0JRY1dVNFhxbGkx?=
 =?utf-8?B?YTJxd2pMM3djc05SNHJQamVxcUthcFFweHk0VkxvYy9WcHpydW5zdVFtRjk1?=
 =?utf-8?B?VHNJV1dBRE8vN2hRQVUzOCtTc01QZm85ZmR6SHEvWDJXem4yVmgzK2JZWDlz?=
 =?utf-8?B?Vld2cXdHWFpPWlZsbGtpVWN2eUsvVk1DR0pocG1pRnFrT2Q5TkpMQ2RwZXdS?=
 =?utf-8?B?MDRwRDZDdWVLYTRMU25kTUpHSlVaWlVQNEZtdDdsRmI4NU5Sd2Y4TDZyc3dj?=
 =?utf-8?B?UEFzR3E4NG5KczZpZXpPb3RVZnJBQlNyQWg0R1dGakgzYmRWVFc1N2FNTUVp?=
 =?utf-8?B?TUxubUQ1Q1ZPUTlFUUY0eVR4eFNGQ05xWUoyc2FBV0VmWXg5YndQTnhWSjlU?=
 =?utf-8?B?U3FZTnFOL3JiODVOejhJUFJ1dTFlNXMxK1JSaHVWejBVMUl3SHg0QmlEbjBl?=
 =?utf-8?B?R21sWUNFeUNFM3ZmcmFTVGRPUnNqR253YUJDMmE1R25ETVhDKzR6UUZBaWkx?=
 =?utf-8?B?cHlVcENLY3pOV203WDhPOThxbFJORmZyMHJBUDdrWHhvSWxNeGNRczYwVWJu?=
 =?utf-8?B?c2g5bEhPWXM3cXF6NkQycjRvN05jRVBOWTRXUDE0M1YvbGRRdVB3LzVweHpP?=
 =?utf-8?B?cTNPbTJLTm1SZ2cvZk5MbkNIbjVvVHhXdDFmR1FBV1M0S0ZQcXFjNGQ2Tlh3?=
 =?utf-8?B?QVZlWExwN1lZcnhsVFlJdGJobFo0UEg2WFpxeFBSNS8xVHprU3lvUE5oeG1X?=
 =?utf-8?B?Y0xzdXdMM2ZlTkh4bk5KeWxJYjYvMDFua25SY081SG9uL0Nhd2g2Q1FsOVkw?=
 =?utf-8?B?NFJqZUp3Wko3QTc2OEZzRkVmWW56SlBMTi92UmNuUVNROCtib2lWa0pIV3U2?=
 =?utf-8?B?czdrcUprYW13Y0NUTDg1b1REOVFXZjdUM3JaK2xsb1ZNSTFjVDlYQTVCODlZ?=
 =?utf-8?B?ejlkOTBSWUx3M1E2cjhmRzVDMFROWlNkU2ppNjhyZkMxdy9hcUpNVnM5K01P?=
 =?utf-8?B?Rkd1TmZDc1UvSmJxMmdna1VKK2RGMVYxalZsQmpvaDRBdXNlZ2U0WDhnK3JG?=
 =?utf-8?B?VXBQWEJnUkZQZ2R6RWx1eUVtOXBRMy9pS2tzWnRKZGFCY1A3OVk1SjZMMlVy?=
 =?utf-8?B?cGkra0ZGT0hDZkRLUERlR3RocHExcnlpOHRUa1hMN3EyWmFjdnU3WkJwVjM3?=
 =?utf-8?B?ckVqZHZ5dVlUT05DbUp3TFpQZnllcFBMQytKRnYxaUtDNDM0Uk5uc0ErUUVK?=
 =?utf-8?B?bmkzVjEzcmRueFpDZGE3WllKZjJVeEFPSkJmVzBxWDExMmNETmo0V2ljakZV?=
 =?utf-8?B?bW4xaHlRR0JXT2czQkV1OTRDNlExMWFaNEJ2Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR15MB5819.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OU5tdXB4OWhkRUtGYno2d1VUK0E3MDYvVCtjQXcwMWlGdDNYa1BmSTM1QzFu?=
 =?utf-8?B?cEtOS083a0dxMzNWMURFckFhejhwb0hiZVNZTFB1ZE9WQThWOU9PN1RPWnhN?=
 =?utf-8?B?aHpNMWlUbDlRcm95dW15ZTFLcEVsQmlESS9IOUg3c1NLVDlhSTFkaVVlVVR0?=
 =?utf-8?B?RGwrUEl2TFg2MytUTDY5M0k0ZHdESlUrVllWUVVuZGgxeGpTWGhERmM2eTFw?=
 =?utf-8?B?WGZ1cnA3L1YvR2E0eUxEbG5CRkM2RkZwNTdTMDNiQzhXZzFVV1Z0UE5PNGtR?=
 =?utf-8?B?TlVhUWJlOGhzL0NnUWhrUU80RVF0UG5FN25pbVpIcy9jR1FlOHpRNk1iTm9J?=
 =?utf-8?B?WGU4QTV4aUVYSVJSSEkrOGtQRU5vT091bVNESEhlWkF4VmEzWUFBZkdBMm5D?=
 =?utf-8?B?TWtiS0tRdjVyNS9LWkVJWGN2K0h2a2h0OVIvYVI5aW85Y3pIc0EzNmNmM3dn?=
 =?utf-8?B?TE9OTlJlWmlQZkFwdzFNVTZNNEx5Ly9TQS9jaEJLNzVFM0k0eE8rcTZkbjk5?=
 =?utf-8?B?KzNCY3dFK1FOL01mYTNhanRyQ3RwaUpRWk9LTE5PSTFsbnhtQXhJZHBLMVdL?=
 =?utf-8?B?VDVlV1J6emRrWXpxVGNBcmJpRVNoVFZWOTQwYVVtMndPeG1pYVdZSmZPbjJM?=
 =?utf-8?B?dXBtL0lHQ3ljRXBBZGoxS0c1LzVIMWJxVHRVQmdFUkN6cy9acmUvODM2RDZt?=
 =?utf-8?B?SW1nNmtzUENRRVZPVmdSM3RQVXNVUTVOMldTNDJydGxvUmtzZFdtYlZ3TVVj?=
 =?utf-8?B?eWE0aDM2YjhKRE5CZTRKWUVubWhtU2JCYXQyMjlCaGFVN1VHUWFFaW1uRFdJ?=
 =?utf-8?B?dzVDZnVvVHN0REFubkVBdS9JallBMXdLY3dPckk5NnZhYnhML3U5aFhBdmd5?=
 =?utf-8?B?c2xMZFNKSnpGWWdZWUk5U3hsQ0pCNDlkUzkxN3N5NEEzc05kUWF0dVdWdng3?=
 =?utf-8?B?dGw0ZXhDMnp4OGFUZ0t2eU5CcS8ybjNPNjJSQTRKVEpwaWdyZEF4RmhDekds?=
 =?utf-8?B?UnpTdTh3SnUvZ0VWVlNORktILzVianF4RlM4aXVnS0ZGa0ZNQTVreEZvYnNB?=
 =?utf-8?B?VmpYZHJ5NmJqQ1VyRWpTc2xVdDd4bWQ1Y2hIZy9hZ1J6TWo3L2k2YTNsa0kw?=
 =?utf-8?B?RlpmWS81TDdER3V0czJ3T1hvWm9GeXFTSnYycmxNRFEvQ1FKWGJJckhwY0JO?=
 =?utf-8?B?enNtS3lubkhvd05JTVl4bldQeXFLOWlvTmMrZFNvczBqekxqRDNyUXlDNTh2?=
 =?utf-8?B?aWVFMkkrM2tTVWhSY2lSTFd5VHpHeEhqL3RpYURORXFDdjEwZkRmM204TDN3?=
 =?utf-8?B?eTFVb3M0ZkNISEc2U1FzTUtIbVBtb3k1aTdvc0tlcC9MRE1veGprMlBCN0hO?=
 =?utf-8?B?RW5EckxqWi8yN21CU1RPSUxUNnVWcXptdnBjN2tybWhhTmV6UUM3VExSdmZ0?=
 =?utf-8?B?bHV5clZKMlpVOHZJMmxSU2xFM0hkV3Q1Y3pLOHdDYzlzN0RFZHZZZDJmTUcy?=
 =?utf-8?B?MitCSFFxQStIUFdmdFRaa0JPT0s0MDhZV1pLbFJxemJoNGR6dHh0TmtLclpD?=
 =?utf-8?B?RlhuTHp1dG45cklWZk5Rd3FlaUJZL0R5OEJ3YWU4eTk2MzRwM3V2MkdRaXFH?=
 =?utf-8?B?SlViZTQrUzcvNlR1dDVLSllSSWlndGFJSDZVNjEyWGZpL0Q5NEkzOTdHTmRk?=
 =?utf-8?B?YnlSMURqQW9PZlFPYktUTXNUeldnMlhhc2c2ZkxBZlNlMGh5bkVHYjBRWGhh?=
 =?utf-8?B?cFpGbGJIVTl0bStCdVA3SG9hT1F3TzhvUDZmdmhHT0VBNGRvOEpjYmZHUld5?=
 =?utf-8?B?dGQxb3BqbkVRY050QS9Fci82ZE1OM2h1WjNMT01ieDRzNjliWUJ0ZHRYbzZG?=
 =?utf-8?B?RWlVeGwvQVBKQk5aV3J0TFFLQnAvNjRCZW1tR25ma2lROVJ5V1BBMEpOZUtw?=
 =?utf-8?B?UlkwUjl4YVVMR2ZkVHhjSEd0ZVl3WTNYNVBHR1JlSXZ1Ulk2cXBlSGI0d1A5?=
 =?utf-8?B?TGR6UXEzQ3pEditwR2FwN1Q0bzd0ZXJKbFBWdmlSd3Qyamkva2J5c2kzWElM?=
 =?utf-8?B?WU9vVEpYTHVEbDlYM2IxYmFUNzFkdFJLM1ZUYzBkS1hhT3N3blZsYTBrbkI4?=
 =?utf-8?B?WGtjMVFHRkp0c1F6OXFJSzg4UXEvTHBRdXZHV0lDeHpPTTMra2JLVkdGUlR0?=
 =?utf-8?Q?xP9wG6LjVjPF3eYGg3CGAI4=3D?=
Content-ID: <E4BBB9553FD6454BB8E0E2552B1E1EA4@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ibm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR15MB5819.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf4f4d4c-2927-476d-5406-08de208d1d06
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2025 19:12:38.2179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fcf67057-50c9-4ad4-98f3-ffca64add9e9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HlFuCtB6ABlzjj6KtTOiN/kt3Qp0KCFKLzFzgUjbwf2zErZ5YElGV6Jq+R/eTDsCLcLccECyWBjA84cx7Lr0KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR15MB6293
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDAxOCBTYWx0ZWRfX8DGC+jBv6edf
 as3KrhlqoFJcN+nQwXoynWKBW1q8gmJN/5gC3PepW1H8+s7le/qmZ0Zlt16NhyF0+mH0G1awYhN
 pWZyVKYOK8xbXlbQCybMjjT9S8upVPRBxjRUpL0l70Zpu6o6+B2EO6aSst7ZfbAXvFu6RK6qNFn
 JztijSv53/k39WNa2oXkQaYo1OKX8dXnO2jUFNh8m/jkqhhjtqQp0J0m4HwBONFiKdNhi4de2Xp
 a+u9h7FtPIFkNHZlvlhFz5a5PzAYO9b0y8mKG2LYvHZSC7FBQlcsO6GsCNMo7tiDei6twIR/2I1
 GaBWUWo6S5oMED6U6PVgneIb7+pviDl1pVp+ORwvaaSgstjBpTrY/H6ICuqQwVGauILOoAq0e7L
 aXnO8HU1GxVD8GEnZdgK3fCwmbLRog==
X-Authority-Analysis: v=2.4 cv=GcEaXAXL c=1 sm=1 tr=0 ts=6912392b cx=c_pps
 a=Xv5HOu5WSFZfuBAuS1yumw==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=QyXUC8HyAAAA:8 a=VnNF1IyMAAAA:8
 a=6-j_7sKItp_voF2SmKEA:9 a=QEXdDO2ut3YA:10 a=UhEZJTgQB8St2RibIkdl:22
 a=Z5ABNNGmrOfJ6cZ5bIyy:22 a=QOGEsqRv6VhmHaoFNykA:22
X-Proofpoint-GUID: 1L9JRQbmWp7AuhQUetZc888E6fKmcziW
X-Proofpoint-ORIG-GUID: 6t2qwdpe0zaFDm8POsex3js8vGaYTx_n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_07,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1011 spamscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510240000 definitions=main-2511080018
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2025-11-10 at 19:40 +0100, Andy Shevchenko wrote:
 > Use %ptSp instead of open coded variants to print content of > struct
 timespec64
 in human readable format. > > Signed-off-by: Andy Shevchenk [...] 
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vIYeq-0008Av-Tw
X-Mailman-Approved-At: Tue, 11 Nov 2025 00:30:02 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 03/23] ceph: Switch to use %ptSp
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
From: Viacheslav Dubeyko via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "hoeppner@linux.ibm.com" <hoeppner@linux.ibm.com>,
 "gustavo@padovan.org" <gustavo@padovan.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "perex@perex.cz" <perex@perex.cz>, "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "marijn.suijten@somainline.org" <marijn.suijten@somainline.org>,
 "agordeev@linux.ibm.com" <agordeev@linux.ibm.com>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "kwilczynski@kernel.org" <kwilczynski@kernel.org>,
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "jesszhan0024@gmail.com" <jesszhan0024@gmail.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "idryomov@gmail.com" <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "konradybcio@kernel.org" <konradybcio@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "svens@linux.ibm.com" <svens@linux.ibm.com>,
 "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "satishkh@cisco.com" <satishkh@cisco.com>,
 "gor@linux.ibm.com" <gor@linux.ibm.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "hca@linux.ibm.com" <hca@linux.ibm.com>,
 "lucas.demarchi@intel.com" <lucas.demarchi@intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "abhinav.kumar@linux.dev" <abhinav.kumar@linux.dev>,
 "mathieu.desnoyers@efficios.com" <mathieu.desnoyers@efficios.com>,
 "sth@linux.ibm.com" <sth@linux.ibm.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>, "sean@poorly.run" <sean@poorly.run>,
 Xiubo Li <xiubli@redhat.com>, "giometti@enneenne.com" <giometti@enneenne.com>,
 "borntraeger@linux.ibm.com" <borntraeger@linux.ibm.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "lumag@kernel.org" <lumag@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "sebaddel@cisco.com" <sebaddel@cisco.com>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "olteanv@gmail.com" <olteanv@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 2025-11-10 at 19:40 +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  fs/ceph/dir.c   |  5 ++---
>  fs/ceph/inode.c | 47 +++++++++++++++--------------------------------
>  fs/ceph/xattr.c |  6 ++----
>  3 files changed, 19 insertions(+), 39 deletions(-)
> 
> diff --git a/fs/ceph/dir.c b/fs/ceph/dir.c
> index d18c0eaef9b7..bf50c6e7a029 100644
> --- a/fs/ceph/dir.c
> +++ b/fs/ceph/dir.c
> @@ -2155,7 +2155,7 @@ static ssize_t ceph_read_dir(struct file *file, char __user *buf, size_t size,
>  				" rfiles:   %20lld\n"
>  				" rsubdirs: %20lld\n"
>  				"rbytes:    %20lld\n"
> -				"rctime:    %10lld.%09ld\n",
> +				"rctime:    %ptSp\n",
>  				ci->i_files + ci->i_subdirs,
>  				ci->i_files,
>  				ci->i_subdirs,
> @@ -2163,8 +2163,7 @@ static ssize_t ceph_read_dir(struct file *file, char __user *buf, size_t size,
>  				ci->i_rfiles,
>  				ci->i_rsubdirs,
>  				ci->i_rbytes,
> -				ci->i_rctime.tv_sec,
> -				ci->i_rctime.tv_nsec);
> +				&ci->i_rctime);
>  	}
>  
>  	if (*ppos >= dfi->dir_info_len)
> diff --git a/fs/ceph/inode.c b/fs/ceph/inode.c
> index 37d3a2477c17..6db8951d79e0 100644
> --- a/fs/ceph/inode.c
> +++ b/fs/ceph/inode.c
> @@ -879,7 +879,9 @@ void ceph_fill_file_time(struct inode *inode, int issued,
>  {
>  	struct ceph_client *cl = ceph_inode_to_client(inode);
>  	struct ceph_inode_info *ci = ceph_inode(inode);
> +	struct timespec64 iatime = inode_get_atime(inode);
>  	struct timespec64 ictime = inode_get_ctime(inode);
> +	struct timespec64 imtime = inode_get_mtime(inode);
>  	int warn = 0;
>  
>  	if (issued & (CEPH_CAP_FILE_EXCL|
> @@ -889,39 +891,26 @@ void ceph_fill_file_time(struct inode *inode, int issued,
>  		      CEPH_CAP_XATTR_EXCL)) {
>  		if (ci->i_version == 0 ||
>  		    timespec64_compare(ctime, &ictime) > 0) {
> -			doutc(cl, "ctime %lld.%09ld -> %lld.%09ld inc w/ cap\n",
> -			     ictime.tv_sec, ictime.tv_nsec,
> -			     ctime->tv_sec, ctime->tv_nsec);
> +			doutc(cl, "ctime %ptSp -> %ptSp inc w/ cap\n", &ictime, ctime);
>  			inode_set_ctime_to_ts(inode, *ctime);
>  		}
>  		if (ci->i_version == 0 ||
>  		    ceph_seq_cmp(time_warp_seq, ci->i_time_warp_seq) > 0) {
>  			/* the MDS did a utimes() */
> -			doutc(cl, "mtime %lld.%09ld -> %lld.%09ld tw %d -> %d\n",
> -			     inode_get_mtime_sec(inode),
> -			     inode_get_mtime_nsec(inode),
> -			     mtime->tv_sec, mtime->tv_nsec,
> +			doutc(cl, "mtime %ptSp -> %ptSp tw %d -> %d\n", &imtime, mtime,
>  			     ci->i_time_warp_seq, (int)time_warp_seq);
>  
>  			inode_set_mtime_to_ts(inode, *mtime);
>  			inode_set_atime_to_ts(inode, *atime);
>  			ci->i_time_warp_seq = time_warp_seq;
>  		} else if (time_warp_seq == ci->i_time_warp_seq) {
> -			struct timespec64	ts;
> -
>  			/* nobody did utimes(); take the max */
> -			ts = inode_get_mtime(inode);
> -			if (timespec64_compare(mtime, &ts) > 0) {
> -				doutc(cl, "mtime %lld.%09ld -> %lld.%09ld inc\n",
> -				     ts.tv_sec, ts.tv_nsec,
> -				     mtime->tv_sec, mtime->tv_nsec);
> +			if (timespec64_compare(mtime, &imtime) > 0) {
> +				doutc(cl, "mtime %ptSp -> %ptSp inc\n", &imtime, mtime);
>  				inode_set_mtime_to_ts(inode, *mtime);
>  			}
> -			ts = inode_get_atime(inode);
> -			if (timespec64_compare(atime, &ts) > 0) {
> -				doutc(cl, "atime %lld.%09ld -> %lld.%09ld inc\n",
> -				     ts.tv_sec, ts.tv_nsec,
> -				     atime->tv_sec, atime->tv_nsec);
> +			if (timespec64_compare(atime, &iatime) > 0) {
> +				doutc(cl, "atime %ptSp -> %ptSp inc\n", &iatime, atime);
>  				inode_set_atime_to_ts(inode, *atime);
>  			}
>  		} else if (issued & CEPH_CAP_FILE_EXCL) {
> @@ -2703,10 +2692,8 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
>  	if (ia_valid & ATTR_ATIME) {
>  		struct timespec64 atime = inode_get_atime(inode);
>  
> -		doutc(cl, "%p %llx.%llx atime %lld.%09ld -> %lld.%09ld\n",
> -		      inode, ceph_vinop(inode),
> -		      atime.tv_sec, atime.tv_nsec,
> -		      attr->ia_atime.tv_sec, attr->ia_atime.tv_nsec);
> +		doutc(cl, "%p %llx.%llx atime %ptSp -> %ptSp\n",
> +		      inode, ceph_vinop(inode), &atime, &attr->ia_atime);
>  		if (!do_sync && (issued & CEPH_CAP_FILE_EXCL)) {
>  			ci->i_time_warp_seq++;
>  			inode_set_atime_to_ts(inode, attr->ia_atime);
> @@ -2780,10 +2767,8 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
>  	if (ia_valid & ATTR_MTIME) {
>  		struct timespec64 mtime = inode_get_mtime(inode);
>  
> -		doutc(cl, "%p %llx.%llx mtime %lld.%09ld -> %lld.%09ld\n",
> -		      inode, ceph_vinop(inode),
> -		      mtime.tv_sec, mtime.tv_nsec,
> -		      attr->ia_mtime.tv_sec, attr->ia_mtime.tv_nsec);
> +		doutc(cl, "%p %llx.%llx mtime %ptSp -> %ptSp\n",
> +		      inode, ceph_vinop(inode), &mtime, &attr->ia_mtime);
>  		if (!do_sync && (issued & CEPH_CAP_FILE_EXCL)) {
>  			ci->i_time_warp_seq++;
>  			inode_set_mtime_to_ts(inode, attr->ia_mtime);
> @@ -2804,13 +2789,11 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
>  
>  	/* these do nothing */
>  	if (ia_valid & ATTR_CTIME) {
> +		struct timespec64 ictime = inode_get_ctime(inode);
>  		bool only = (ia_valid & (ATTR_SIZE|ATTR_MTIME|ATTR_ATIME|
>  					 ATTR_MODE|ATTR_UID|ATTR_GID)) == 0;
> -		doutc(cl, "%p %llx.%llx ctime %lld.%09ld -> %lld.%09ld (%s)\n",
> -		      inode, ceph_vinop(inode),
> -		      inode_get_ctime_sec(inode),
> -		      inode_get_ctime_nsec(inode),
> -		      attr->ia_ctime.tv_sec, attr->ia_ctime.tv_nsec,
> +		doutc(cl, "%p %llx.%llx ctime %ptSp -> %ptSp (%s)\n",
> +		      inode, ceph_vinop(inode), &ictime, &attr->ia_ctime,
>  		      only ? "ctime only" : "ignored");
>  		if (only) {
>  			/*
> diff --git a/fs/ceph/xattr.c b/fs/ceph/xattr.c
> index 537165db4519..ad1f30bea175 100644
> --- a/fs/ceph/xattr.c
> +++ b/fs/ceph/xattr.c
> @@ -249,8 +249,7 @@ static ssize_t ceph_vxattrcb_dir_rbytes(struct ceph_inode_info *ci, char *val,
>  static ssize_t ceph_vxattrcb_dir_rctime(struct ceph_inode_info *ci, char *val,
>  					size_t size)
>  {
> -	return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_rctime.tv_sec,
> -				ci->i_rctime.tv_nsec);
> +	return ceph_fmt_xattr(val, size, "%ptSp", &ci->i_rctime);
>  }
>  
>  /* dir pin */
> @@ -307,8 +306,7 @@ static bool ceph_vxattrcb_snap_btime_exists(struct ceph_inode_info *ci)
>  static ssize_t ceph_vxattrcb_snap_btime(struct ceph_inode_info *ci, char *val,
>  					size_t size)
>  {
> -	return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_snap_btime.tv_sec,
> -				ci->i_snap_btime.tv_nsec);
> +	return ceph_fmt_xattr(val, size, "%ptSp", &ci->i_snap_btime);
>  }
>  
>  static ssize_t ceph_vxattrcb_cluster_fsid(struct ceph_inode_info *ci,

Looks good. Nice cleanup.

Reviewed-by: Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>

Thanks,
Slava.

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

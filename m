Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECB6C5D714
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Nov 2025 14:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JKXfCp1wExCRQh3w6jxGLj93pAJpvFCKprEUuw55uDw=; b=kdpmlJFUB7Jf0omXjFAeizRwGd
	b3fyfi4Y6cN8bAnTRYcmiQwmoNtNWaJgd412yfuNTndZzGECSHwP/zVnxBE/5UZ5OhwEGiKljm/FW
	LQLQOM/IL5m7y0jbv5j3wKE+xCqESs7G0jJbIktPduC4ORSpBtS68ptYLVjYH/hTXtK4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJuFu-0001SV-46;
	Fri, 14 Nov 2025 13:54:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartilak@cisco.com>) id 1vJg97-0002s5-Cj
 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 22:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8JVJ68Ci8hH+vA9bF8YiFlkwB1Lv6uIdcNwtst+8pPM=; b=GpSrvW92YjFi0P9I4rR+xDGKEa
 qceGU8AeEusda4LYGlmZ0m1EyFpHTrVhMdzlSoFj80Kf/RKZC3isfA3l5m0ZyPku/jAS7ugmuXcW5
 yE0+PZqJAPrrhNukcpubQEKYI3JUxzNmUX34Vls6c29MVVncSR07P4inJSLSM8HpJGgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8JVJ68Ci8hH+vA9bF8YiFlkwB1Lv6uIdcNwtst+8pPM=; b=R9P4X5Pe4opshOCfxccTH7JPHZ
 Y6dpldFwWAULUPBKk5AMypRuvQevDJDqvVqJyV3F8aCD5vQBj4TIH8W2BQuUyLCBk3NCxkyuNxD/2
 G4hjp/TGFLzhxMTsWECiNTVRDFzC+I1KTxuIpeS7nJLhMRQvm8cx+GHSrT2a+IfGuSrU=;
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJg96-00020l-Hw for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 22:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cisco.com; i=@cisco.com; l=5367; q=dns/txt;
 s=iport01; t=1763074228; x=1764283828;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8JVJ68Ci8hH+vA9bF8YiFlkwB1Lv6uIdcNwtst+8pPM=;
 b=EY8RQDWxCNVDgx0O4rosI40OkQ3kFUCwjkZOZ0eMs9g76D3XD2ecn/aQ
 61tAALySquGHSMc6qA9II7HBHh9Qpsuozq0zR2MYJTgWR1rrx3nc49/dH
 cZZfpLDW7GdfRLHffFRjDuD5061o4bxzhTTS6ImK1z/WrnjnYBFVk0H/9
 eq5oIWYjRvb1FVXSCCh1JvVWMqIvyIbZvQ8MSciezsbT9e8qmDMDpJ7r2
 4Nf0oG84eLtut4B1GFA4nqWPuKVBqR8o7nRtqPAy6AmEwlWeeWhfgJg5M
 nhMjM0nhrAFaNbqsPnXsha5cLypyQWPHiOnx2U8z/aUNNP21eXxBX5Tcy w==;
X-CSE-ConnectionGUID: hvyaQWcYTTKckMNkrvVp1Q==
X-CSE-MsgGUID: xlyeWa29Q5G4EHwLYpD8Iw==
X-IPAS-Result: =?us-ascii?q?A0BAAAD4WxZp/40QJK1aHAEBAQEBAQcBARIBAQQEAQFAJ?=
 =?us-ascii?q?YEYBgEBCwGBbVIHghtJiCADhSyGWIIhA54aFIFrDwEBAQ0CUQQBAYUHAoxaA?=
 =?us-ascii?q?iY1CA4BAgQBAQEBAwIDAQEBAQEBAQEBAQELAQEFAQEBAgEHBYEOE4ZchloBA?=
 =?us-ascii?q?QEBAxIVUhACAQgOCi4xJQIEAQ0FCBqFVAMBAqRWAYFAAooreIEBM4EB4CaBS?=
 =?us-ascii?q?gGIUgGFbjuEPScbgg2BV3mBbz6EKhuEE4IvBIIigQ6GJ3mLYIZjUngcA1ksA?=
 =?us-ascii?q?VUTFwsHBYEgEDMDIAo0LQIUDRASDwQWBS0dcAwoEhAfGBFgVECDSRAMBmgPB?=
 =?us-ascii?q?oESGUkCAgIFAisVOoFoBQEcBhwSAgMBAgI6VQ2BdwICBIIZfoFvGw+JSIEaA?=
 =?us-ascii?q?wttPTcGDhsFBIE1BZQUghNpAT1RgTEMUwQsY5JsCIMjAbAfCoQcog0XhASNE?=
 =?us-ascii?q?4cCklKZBiKodAIEAgQFAhABAQaBaQE6gVlwFYMiUhkPji0WkxsBtUN4AjoCB?=
 =?us-ascii?q?wsBAQMJk2cBAQ?=
IronPort-PHdr: A9a23:2sklUBTOEdvdikJibpoSEJ1Drtpso47LVj580XJvo7tKdqLm+IztI
 wmEo/5sl1TOG47c7qEMh+nXtvX4UHcbqdaasX8EeYBRTRJNl8gMngIhDcLEQU32JfLndWo7S
 exJVURu+DewNk09JQ==
IronPort-Data: A9a23:0skxSKIg/xQEzSjOFE+RiZQlxSXFcZb7ZxGr2PjKsXjdYENS1zYBx
 jQYCzqCOKyJMTGke4wjaori/EhT6MXQn9QxHQYd+CA2RRqmiyZq6fd1j6vUF3nPRiEWZBs/t
 63yUvGZcoZsCCSa/kvxWlTYhSEU/bmSQbbhA/LzNCl0RAt1IA8skhsLd9QR2uaEuvDnRVrc0
 T/Oi5eHYgL8gmcvajl8B5+r8XuDgtyj4Fv0gXRmDRx7lAe2v2UYCpsZOZawIxPQKqFIHvS3T
 vr017qw+GXU5X8FUrtJRZ6iLyXm6paLVeS/oiI+t5qK23CulQRuukoPD8fwXG8M49m/c3+d/
 /0W3XC4YV9B0qQhA43xWTEAe811FfUuFLMqvRFTvOTLp3AqfUcAzN1uElA/BLITy9pLImpN0
 NobMi4zdkm60rfeLLKTEoGAh+wqKM3teYdasXZ6wHSBUbAtQIvIROPB4towMDUY358VW62AI
 ZNHL2MzNXwsYDUXUrsTIJE3hvupgnD8WzZZs1mS46Ew5gA/ySQvieO2aoCOI4XiqcN9jkKJq
 13PpTXAXz5GGfyA7Qud3iKNmbqa9c/8cMdIfFGizdZtmFCVx3QWCVgaWEW2pf6hh1SWX9NEN
 1dS4S0zt6M/+kuxQdS7WRCkyENopTYVX95WVul/4waXx++Mv0CSB3MPSXhKb9lOWNIKeAHGH
 2ShxrvBLTduq7aSD3ma89+pQfmaYED58Udqifc4cDY4
IronPort-HdrOrdr: A9a23:G6wLe6yIBdu4fDhJspvPKrPxY+gkLtp133Aq2lEZdPULSL36qy
 n+ppQmPEHP6Qr5AEtQ5+xoWJPtfZvdnaQFh7X5To3SLTUO31HYY72KjLGSjwEIdBeOjNK1uZ
 0QF5SWTeeAcmSS7vyKrjVQcexQveVvmZrA7YyxvhUdKD2CKZsQkzuRYTzra3GeMTM2fqbRY6
 DsnvavyQDQHkg/X4CQPFVAde7FoNHAiZLhZjA7JzNP0mOzpALtwoTXVzyD0Dkjcx4n+9ofGG
 7+/DDR1+GGibWW2xXc32jc49B9g9360OZOA8SKl4w8NijsohzAXvUgZ5Sy+BQO5M2/4lcjl9
 fB5z06Od5o1n/Xdmap5TPwxgjb1io04XOK8y7avZKjm726eNsJMbsEuWtrSGqf16PmhqA77E
 t/5RPdi3OQN2KYoM2y3amRa/ggrDvFnZNrq59hs5UYa/peVFeUxrZvpn+81/w7bXnHwZFiH+
 90AM7G4vFKNVuccnDCp2FqhMehR3IpA369MwM/U+GuonFrdUpCvgMl7d1amm1F+IM2SpFC6e
 iBOqN0lKtWRstTaa5mHu8OTca+F2SIGHv3QS+vCEWiELtCN2PGqpbx7rlw7Oa2eIYQxJ93nJ
 jaSltXuWM7ZkqrA8yT259A9AzLXQyGLH7Q49Ab44I8tqz3RbLtPyHGQFcyk9G4q/FaGcHfU+
 bbAuMhPxYiFxqYJW9k5XyLZ3AJEwhtbCQ8gKdPZ26z
X-Talos-CUID: 9a23:+MqF1mHrZKPfy0mDqmJn6l8dI/8uQ0Hh73zTBmm7E3hXUOSsHAo=
X-Talos-MUID: =?us-ascii?q?9a23=3AnThk7g4/4pccwOQ+zRurrl5Qxox457WjN0lXwKx?=
 =?us-ascii?q?blJWpFTNUCi+x3BWoF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-l-core-04.cisco.com ([173.36.16.141])
 by alln-iport-6.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 13 Nov 2025 22:34:45 +0000
Received: from alln-opgw-3.cisco.com (alln-opgw-3.cisco.com [173.37.147.251])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by alln-l-core-04.cisco.com (Postfix) with ESMTPS id 92166180004AB
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Nov 2025 22:34:45 +0000 (GMT)
X-CSE-ConnectionGUID: GCrkPvmrQQyYT0zT2MC+fg==
X-CSE-MsgGUID: XijHqBfrRMaTSrqVw0ziAg==
Authentication-Results: alln-opgw-3.cisco.com;
 dkim=pass (signature verified) header.i=@cisco.com
X-IronPort-AV: E=Sophos;i="6.19,303,1754956800"; d="scan'208";a="36153306"
Received: from mail-ch4pr07cu00101.outbound.protection.outlook.com (HELO
 CH4PR07CU001.outbound.protection.outlook.com) ([40.93.20.97])
 by alln-opgw-3.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 13 Nov 2025 22:34:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gzxoebjS9ToWZ6hkFn/yQS0iiplaQq1B4uUQr0RFXuTMtZe72qWKPaG3zeMn26vWbIUlrcW0xe1x5Z6AE/AQ0C3bRseVPhIvBh3olnvhwkAvI1F8xuvYDAqZY+ca8QP9WQOpcwDN0FIJjZm7eFuCIJCHeOFchgTOrzE5tGxI318PpwHZH/atRcXt0450+vS7OqWhGblRJM6hGqVaLVHf+Gn0pfH59UDzAzTCqwBFYuynnIPrV8z/D0SF780/FcP5TPFqLGc4Jz7vVUu5owU/wPyl+CqljKGnPurboag5vnjAWCn0pDFc7X1cRjSr929YyrQV+gyZrAx+Dk/ie/Bu7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JVJ68Ci8hH+vA9bF8YiFlkwB1Lv6uIdcNwtst+8pPM=;
 b=wQak6JIoINwHL1xP/fq5L8vTabF8f9R4aD+z5MVNdyLO+dN/g9+GwFS4wtQ4KpOUrOV/kRnaI+ktN3ACIpuQul8qUUSJt04bppepZcDS8kp98Ps9pCxaNLxJkNI7pJXih62kvQ2gfhiToK69kKhcJA49IIEDsk4YkNzmRnS7EqBTimK6tiMMDQnRpHB2J7BO0RHFdWfEiwT++GtOp40H2PsMvirkCTQ6e25HPa76rYFIrzzc+kbkUO5v43lrHyZ47I8j8uICIS3yyPyUrko2G3AXGl4YRv5pOeXPVjDK9CtK2HT3DJjv3kY5fNw+MwypfUD15ctnAIHmdjTbfUdP8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19)
 by IA1PR11MB7755.namprd11.prod.outlook.com (2603:10b6:208:420::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Thu, 13 Nov
 2025 22:34:36 +0000
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd]) by SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd%4]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 22:34:36 +0000
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Corey Minyard
 <corey@minyard.net>, =?iso-8859-2?Q?Christian_K=F6nig?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost
 <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas
 Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K.
 Petersen" <martin.petersen@oracle.com>, Hans Verkuil
 <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven
 Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Viacheslav
 Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
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
Thread-Topic: [PATCH v3 19/21] scsi: fnic: Switch to use %ptSp
Thread-Index: AQHcVK6ozanKNwbcFU2LSi/oClNkW7TxMIPg
Date: Thu, 13 Nov 2025 22:34:36 +0000
Message-ID: <SJ0PR11MB5896D2F9DAC35FF8ADB29087C3CDA@SJ0PR11MB5896.namprd11.prod.outlook.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5896:EE_|IA1PR11MB7755:EE_
x-ms-office365-filtering-correlation-id: 3cf75da7-1b8e-4777-1265-08de2304d313
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?EV+qDQ4opgT6YErEt+UTHCFYqvHTNJI5xuKV0TWvVDABI0Ef8+VDdGTavR?=
 =?iso-8859-2?Q?SNJR5b3R0U9xD3zMHb8nX29wKP3IboINDE5Vu3YwhbTGwLiATuVYXvnS/z?=
 =?iso-8859-2?Q?IuCxsetISmon5JlHrjND3OG8FJcZK0TctHcd7wsSq0vX5gTK4Mly8e2tXB?=
 =?iso-8859-2?Q?8niGQPhFBtcfIvxSP02U+OsRVhVAlAZU9FNl3umrxpWNh2Ou/gAUtKMMja?=
 =?iso-8859-2?Q?vuk/ZOK8y62KRUh4+Yqy1hLRgoy4MzxIQm9ENoDUDKejiY6VAmxaHBtFMv?=
 =?iso-8859-2?Q?khC+LYVKosq8tq4fM65y1+JzsHqZPyWKtv2KiMvx/00QoNn4AxpcNxgov/?=
 =?iso-8859-2?Q?f7J3E9cKAtg2zReMnMxzzrtN3tDrlmZvQPQGDFohM7peloBOxRkKX2glgv?=
 =?iso-8859-2?Q?6p593bO9o3W6G9PSesKeQ9Qk4a9MIRTejqyErN++fwt7BiOL2Oda2guwYK?=
 =?iso-8859-2?Q?DzzccPSUzCrJOelr77JA9iEVIu8KJnD2fd66UlCv7gk3Fh/B5QZXLJaGtu?=
 =?iso-8859-2?Q?5LG5k8+7w3IoPhyFfMFqo25jCT+TxxiBwFSXTUJEPDjp9yLPR/o545NFJ7?=
 =?iso-8859-2?Q?dqplbeu5arprxhwRAyU085ei3Qb9ABYMk0kBR5G3nrwItNBjoNKE7rLfZ2?=
 =?iso-8859-2?Q?WL5jfsO+dsZjt6gxuOMRbyO47AgSAm5bCq5TMLEEoXRz3bwvr6uK1rr3Ns?=
 =?iso-8859-2?Q?yRSBerbmJD/ZZ+ObnNDbOOH2iCkHUJuVJxvO43eV7MHOp354KyauFmaAnx?=
 =?iso-8859-2?Q?ve3W8QuXW9HC8E002cKp+JmxPMtAaet0UYmffOQ/QtH9pwqs4RWURUqq10?=
 =?iso-8859-2?Q?AjWtBDSOgaBz07nb/wVUnhjGu3IlwbuOc05yLo7NAt+ogtQuPheZLWdkse?=
 =?iso-8859-2?Q?sVJEQXE+iIsU6NtdDfGyvgqpPx+wEai/fzTe1OsBTT3g4ISw8I0lqUo7PN?=
 =?iso-8859-2?Q?Ui58IOsGbxGXrkTbfHasebGXowPe7ji1AbBtVYVvz/fA7riU7f6beYLRg1?=
 =?iso-8859-2?Q?s8CRYhMj5gncWcknGIRth3Ni/LpRDlE3jvW0TIByQodKFwcoTNRcZqS9VZ?=
 =?iso-8859-2?Q?u3BmU+kB3fay6joTlS1WDA4diI9X9Pduq+SPZuk3EqHOLxb3YEP2NNMM+V?=
 =?iso-8859-2?Q?F9ehoScC422VY4fWpfpEaSZpNiOMQNq0233ZGVagJMez1oEpHJolJ4IYDF?=
 =?iso-8859-2?Q?rr95lC/zxpoLNZwcwqL5nHwh+kfByty09Vl9v6IhYVaw416rCIM5swf9cr?=
 =?iso-8859-2?Q?cPUHa7lW/29d0PAAhUgphYMjq79TEGuuu+U9e5RQGvksOA26HWqQdVvcN0?=
 =?iso-8859-2?Q?+WW1bi3sCAWfoKq6H5qjbVJe21oBV3lx6AnX6rS+XSG4QMSETxmaFEKKVb?=
 =?iso-8859-2?Q?7y5luHp8/I+Y8wqeUtKPqJ5rH2x/El887tArDaXVwW1B6ayD3B+SPdK+E5?=
 =?iso-8859-2?Q?ju2AWJVNKsxRVZOx/Fi/WE971MHiHUvsR/yupHVmPZC/6Ewd+LlaC1Q8uA?=
 =?iso-8859-2?Q?iV1i/kX1mV6VgVa4nc14YAcu9qryk57wAI+Wd+gH+oypoZd76+5cQufEzy?=
 =?iso-8859-2?Q?1EOlIiZCP+WpsYf5xLKPUCNLz49r?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5896.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?JAcZu+XLiUOU8CJSSgwLGu7Y/XMu8k1WUI7Ah4cqVJUMBWde4kmxiTEO9K?=
 =?iso-8859-2?Q?dpJ5rZhOLpU5T9t2I/XlB3US7ufDrG0lM/DZfTCqdaK946hnz5F77s3wKJ?=
 =?iso-8859-2?Q?qgMA0wh2jdBFePzNXbR77En+zJXbyV1ndr+UumsF8SMXKQJ+OOdSR8UrSN?=
 =?iso-8859-2?Q?RklHn/G95gf/JEC5Pdn9PYix/KgqLWjYnGNlXVniFqQzmiQWxxn4ht70VM?=
 =?iso-8859-2?Q?KVEpzpUuas1b+v/EjYw8umW4FzWillX9WIeKnPt/6oQBFIJI/oLhWHdQP1?=
 =?iso-8859-2?Q?wnDX4bYaOllhPkyzIUDdEAo0NLx6N78O8eMe8ZJmYBnW2JmZXA2nqFIXpP?=
 =?iso-8859-2?Q?IuZUYiIFNz+bkdMYmPth6KYoNyyeT22qA89rVpsfDxgYbRNhk+PEGwIJTg?=
 =?iso-8859-2?Q?EUmtoXbbYR/FobrnsouXDWjP1UYOdDAcAqbXlCqucsdi+lqasmhosWEH6D?=
 =?iso-8859-2?Q?yNcXgt2c/bB/umXc8F0Faueqx5RwVzzx1kJs3F9ENKkf1aAs988BbpP98s?=
 =?iso-8859-2?Q?Hs9lqXCsJKbR2SjsIP71J7dJzshIi1m/+MaiOcNcZZwmFLH6OA0oLN1v/R?=
 =?iso-8859-2?Q?gFzW/ELHRS0DbgWKB7GYozXa+3UMEldiHkSWT8gJ8bswch5/+t8VcYpSM2?=
 =?iso-8859-2?Q?7SxAuxLOsE4QePikmND7AeXMC6ojUIO228eQUOPqV8Q/DBI8skTva0pEq8?=
 =?iso-8859-2?Q?zvS9imhV+clIJAH2JfiiDhLUVs2sscc4qUGi7J2MtsE/vr2xHwA4aYNEAH?=
 =?iso-8859-2?Q?6yrdru3DI77uvaD6At6OwOqH8Cmm7+UoYAq8DCO9E8LN6OJrIuO2BtQ4pM?=
 =?iso-8859-2?Q?zCcBbB7unQO+pQnEjPMFLwaweL6TuXmQ6cYEaSaS2pEssJFr1F8vb617QA?=
 =?iso-8859-2?Q?uT/5s+cP16uCXXJFqfF3HTg9YOlpH/R/l6hTu4a/BhcvDzGOiSOjsgsPIi?=
 =?iso-8859-2?Q?n9HTEQdHTjI25vY7N5PqZRdEsd8G4jP3CZT8lPbyLaEWO+vCshV22lTRxr?=
 =?iso-8859-2?Q?L1R9JCkMR7q2rtXScfGH7K7h/L8Y4ssMradPA8ycNfEVRJ9hs7vFneUsaZ?=
 =?iso-8859-2?Q?NjLQJ46yxpyfzQipPYwIHLDKqzhQa/+bo1lTBGm4YOEMP318iH+ibcrv5q?=
 =?iso-8859-2?Q?R1IVAFTppmRUMzxJLuJTqV57wDRNmFlU7iqH65Jni/Bvxaf6pbLIE7shYi?=
 =?iso-8859-2?Q?/2BGpuUbA4hZwANp5E2Ih0hTWre1X0SeJHcQSXLAbEfTlpiVg7+yPt6E8N?=
 =?iso-8859-2?Q?JRr22MREJHr68n99H9VNcbUoTQWVXswgoHEiBGZHzfX7HKaT4Yc7Lfh/ek?=
 =?iso-8859-2?Q?75nIHJeeC9hhA4SXFNcxHI4uVyIrmRngkUolr2urenyu5zezfaxO8JmDX4?=
 =?iso-8859-2?Q?euhetnR8XyZRSStChswMTaP4l+NvTgcbWtuVl/Qe+7Q+bANcHMFtChFlcX?=
 =?iso-8859-2?Q?rNZDbbAepHlFEvJYUvQOhkjbDJ5+ve7TfD5nwyLfqN6vDPi+FVRCaB0GDX?=
 =?iso-8859-2?Q?K2I1JeGZQuGp30dM9ISX8xW5V+CTM78+bCoYjXzG4dt2onHVAGTQagC4Xu?=
 =?iso-8859-2?Q?0sHGJ1xqsQUIK7WWDvUVIyf7n4jVA4sIYkNo5AI1i7GyLjrvEd2IlwNxsF?=
 =?iso-8859-2?Q?Q9PMXYfRADkiwN7AmZyMvDbaLqpemSwu9Y?=
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf75da7-1b8e-4777-1265-08de2304d313
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 22:34:36.0943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qzy1shonmI5zJGs1dmaG8CrCP6foCu3hlDlOh8wFz+DyMGfoDNvNl+htR9RXXM+Thcff9uKfnLugIX4fvwAgxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7755
X-Outbound-SMTP-Client: 173.37.147.251, alln-opgw-3.cisco.com
X-Outbound-Node: alln-l-core-04.cisco.com
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thursday, November 13, 2025 6:33 AM,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 wrote: > > Use %ptSp instead of open coded variants to print content of >
 struct timespec64 in human readabl [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.142.93 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJg96-00020l-Hw
X-Mailman-Approved-At: Fri, 14 Nov 2025 13:54:24 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 19/21] scsi: fnic: Switch to use
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
From: "Karan Tilak Kumar \(kartilak\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Karan Tilak Kumar \(kartilak\)" <kartilak@cisco.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?iso-8859-2?Q?Krzysztof_Wilczy=F1ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?iso-8859-2?Q?Thomas_Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, "Satish
 Kharat \(satishkh\)" <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
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
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Sesidhar Baddela \(sebaddel\)" <sebaddel@cisco.com>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sven Schnelle <svens@linux.ibm.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thursday, November 13, 2025 6:33 AM, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
>
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
>
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> drivers/scsi/fnic/fnic_trace.c | 52 ++++++++++++++--------------------
> 1 file changed, 22 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
> index cdc6b12b1ec2..0a849a195a8e 100644
> --- a/drivers/scsi/fnic/fnic_trace.c
> +++ b/drivers/scsi/fnic/fnic_trace.c
> @@ -138,9 +138,8 @@ int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
> */
> len += scnprintf(fnic_dbgfs_prt->buffer + len,
> (trace_max_pages * PAGE_SIZE * 3) - len,
> -                               "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
> -                               "%16llx %16llx %16llx\n", (u64)val.tv_sec,
> -                               val.tv_nsec, str, tbp->host_no, tbp->tag,
> +                               "%ptSp %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\n",
> +                               &val, str, tbp->host_no, tbp->tag,
> tbp->data[0], tbp->data[1], tbp->data[2],
> tbp->data[3], tbp->data[4]);
> rd_idx++;
> @@ -180,9 +179,8 @@ int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
> */
> len += scnprintf(fnic_dbgfs_prt->buffer + len,
> (trace_max_pages * PAGE_SIZE * 3) - len,
> -                               "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
> -                               "%16llx %16llx %16llx\n", (u64)val.tv_sec,
> -                               val.tv_nsec, str, tbp->host_no, tbp->tag,
> +                               "%ptSp %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\n",
> +                               &val, str, tbp->host_no, tbp->tag,
> tbp->data[0], tbp->data[1], tbp->data[2],
> tbp->data[3], tbp->data[4]);
> rd_idx++;
> @@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> {
> int len = 0;
> int buf_size = debug->buf_size;
> -     struct timespec64 val1, val2;
> +     struct timespec64 val, val1, val2;
> int i = 0;
>
> -     ktime_get_real_ts64(&val1);
> +     ktime_get_real_ts64(&val);
> len = scnprintf(debug->debug_buffer + len, buf_size - len,
> "------------------------------------------\n"
> "\t\tTime\n"
> "------------------------------------------\n");
>
> +     val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
> +     val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
> len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -             "Current time :          [%lld:%ld]\n"
> -             "Last stats reset time:  [%lld:%09ld]\n"
> -             "Last stats read time:   [%lld:%ld]\n"
> -             "delta since last reset: [%lld:%ld]\n"
> -             "delta since last read:  [%lld:%ld]\n",
> -     (s64)val1.tv_sec, val1.tv_nsec,
> -     (s64)stats->stats_timestamps.last_reset_time.tv_sec,
> -     stats->stats_timestamps.last_reset_time.tv_nsec,
> -     (s64)stats->stats_timestamps.last_read_time.tv_sec,
> -     stats->stats_timestamps.last_read_time.tv_nsec,
> -     (s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
> -     timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
> -     (s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
> -     timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
> +                      "Current time :          [%ptSp]\n"
> +                      "Last stats reset time:  [%ptSp]\n"
> +                      "Last stats read time:   [%ptSp]\n"
> +                      "delta since last reset: [%ptSp]\n"
> +                      "delta since last read:  [%ptSp]\n",
> +                      &val,
> +                      &stats->stats_timestamps.last_reset_time, &val1,
> +                      &stats->stats_timestamps.last_read_time, &val2);
>
> stats->stats_timestamps.last_read_time = val1;
>
> @@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);
>
> len += scnprintf(debug->debug_buffer + len, buf_size - len,
> -               "Last ISR time: %llu (%8llu.%09lu)\n"
> -               "Last ACK time: %llu (%8llu.%09lu)\n"
> +               "Last ISR time: %llu (%ptSp)\n"
> +               "Last ACK time: %llu (%ptSp)\n"
> "Max ISR jiffies: %llu\n"
> "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
> "Corr. work done: %llu\n"
> @@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> "Number of rport not ready: %lld\n"
> "Number of receive frame errors: %lld\n"
> "Port speed (in Mbps): %lld\n",
> -               (u64)stats->misc_stats.last_isr_time,
> -               (s64)val1.tv_sec, val1.tv_nsec,
> -               (u64)stats->misc_stats.last_ack_time,
> -               (s64)val2.tv_sec, val2.tv_nsec,
> +               (u64)stats->misc_stats.last_isr_time, &val1,
> +               (u64)stats->misc_stats.last_ack_time, &val2,
> (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
> (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
> (u64)atomic64_read(&stats->misc_stats.corr_work_done),
> @@ -857,8 +849,8 @@ void copy_and_format_trace_data(struct fc_trace_hdr *tdata,
> len = *orig_len;
>
> len += scnprintf(fnic_dbgfs_prt->buffer + len, max_size - len,
> -                      "%ptTs.%09lu ns%8x       %c%8x\t",
> -                      &tdata->time_stamp.tv_sec, tdata->time_stamp.tv_nsec,
> +                      "%ptSs ns%8x       %c%8x\t",
> +                      &tdata->time_stamp,
> tdata->host_no, tdata->frame_type, tdata->frame_len);
>
> fc_trace = (char *)FC_TRACE_ADDRESS(tdata);
> --
> 2.50.1
>
>

Acked-by: Karan Tilak Kumar <kartilak@cisco.com>

Thanks for the change, Andy.

Can you please advise how I can compile test this change?

Regards,
Karan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

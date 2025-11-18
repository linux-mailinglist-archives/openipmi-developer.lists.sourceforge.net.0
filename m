Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAEDC6B4BF
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Nov 2025 19:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EtCIXULvgxUxBt9abBGC/6CBN5QC4iRQM1igVpHXE2U=; b=UHyCOg6iZxNrH0bwRJz4qMpMRC
	CSzEO/pDvJqogwc1J0V2YRMuxrI65zjG2CFna2AgkbvCSulx3Sqvk/kX0kMS2o0tNvr+ZWOJbshF0
	zSesPam+9B65oFTn+3dJnHq3EL3uwV7HX5m+bURRF+rghmT6/HfhdYqyLu4h+MjVMdDw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLQpf-00036h-A3;
	Tue, 18 Nov 2025 18:53:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartilak@cisco.com>) id 1vLQpe-00036V-27
 for openipmi-developer@lists.sourceforge.net;
 Tue, 18 Nov 2025 18:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=; b=nJ14l8BqMIsBwf/58ugCEtwiud
 wiUbXfN85oaJC55VA4y4Ait3I+BRPsQWHUGNVEdglARolW9+JPziB8TPTBXGwH274tuLfTV6mCtHy
 i6oZfs/mSF1a9fhsEwX6YGqKNF54rNgNxcF6e3m9wOqyRb3yDM4owaQQSPRY0f0ThPzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=; b=cN+MuXilfN/aT0QH1nNi+EtwIM
 8vB1Ha3El1TFxFFrthYU4V1njruRNqIM2LNibyofPisjgYAt3ObybQpNoan3RCBXhfgzxXXozZid3
 5Ut4CvmnrIobwwj+RSI0OkN6u0BzYFIzbFnIoUNygLsMhHid5QVGiZ/AZdLuQhLTGxR0=;
Received: from alln-iport-5.cisco.com ([173.37.142.92])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLQpd-0003Nz-H1 for openipmi-developer@lists.sourceforge.net;
 Tue, 18 Nov 2025 18:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cisco.com; i=@cisco.com; l=818; q=dns/txt;
 s=iport01; t=1763492017; x=1764701617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=;
 b=Zf7GksyjeOJNLDjBoQ+RYWHE32XQOli9vUyYZ9ZjArOjoIBIwolTO6LC
 N58+OCQtPyzX32m36YbAOx8kNOQ63zu6ZBFqlvn/AkRUmX0sMprS3GOjd
 MMzzGlafK6BdDn5nx8YnPq0tKgPS6M8Erw4To2Qw3EesxmI2bBcALMtl3
 AXKRm9ZD9Rl0/79UHteP4g/Rnr7G06cWv6YN31j+VpkN+K5yQXQLyYjXT
 PghhIttV+CrA38yUEL9I6+IZs/I8oObn5cVkc9VOwwDLNJPu0sACPILte
 uBXp16lziAnnOMnAR1cA2TmwVsvSKQJ8c74rwv76iFmwaLEyByV2MMUFx Q==;
X-CSE-ConnectionGUID: UrMEdIHRTXOhXcMU8PCNhA==
X-CSE-MsgGUID: 3JCkxbMjTkOz0CF0CjmHHw==
X-IPAS-Result: =?us-ascii?q?A0AuAAClvxxp/5QQJK1aHAEBAQEBAQcBARIBAQQEAQFAJ?=
 =?us-ascii?q?YEXBwEBCwGBbVIHghtJiCADhE1fhliCJJ4agX8PAQEBDQJRBAEBhQcCjFoCJ?=
 =?us-ascii?q?jQJDgECBAEBAQEDAgMBAQEBAQEBAQEBAQsBAQUBAQECAQcFgQ4ThlyGWgEBA?=
 =?us-ascii?q?QEDEig/EAIBCA4KHhAxJQIEDgUIGoVUAwECo2cBgUACiit4gTSBAeAmgUoBi?=
 =?us-ascii?q?FIBhW6EeCcbgg2BV4JoPoRFhBOCLwSBDoEUgQ6GJ4wmTIY8UngcA1ksAVUTF?=
 =?us-ascii?q?wsHBYEgQwOBCyNLBS0dgSQiHxgRYFRAg0kQDAZoDwaBEhlJAgICBQJAOoFoB?=
 =?us-ascii?q?hwGHBICAwECAjpVDYF3AgIEghx+ggoPiGGBCQVHAwttPTcUGwUEgTUFlAxRg?=
 =?us-ascii?q?UNpmkqbCJUXCoQcog0XhASNE5lUmQapFgIEAgQFAhABAQaBaDyBWXAVgyJSG?=
 =?us-ascii?q?Q/VEHgCOgIHCwEBAwmGSI0fAQE?=
IronPort-PHdr: A9a23:vBVRtxyQSAuNNC3XCzPsngc9DxPP8539OgoTr50/hK0LKOKo/o/pO
 wrU4vA+xFPKXICO8/tfkKKWqKHvX2Uc/IyM+G4Pap1CVhIJyI0WkgUsDdTDCBjTJ//xZCt8F
 8NHPGI=
IronPort-Data: A9a23:swPTF6wzjDxiuuH/PZh6t+dvxyrEfRIJ4+MujC+fZmUNrF6WrkUPn
 DMXWmGDPK3bYzf3ed52aISx/R5U6JSAy9c1TwZvr1hgHilAwSbn6Xt1DatR0we6dJCroJdPt
 p1GAjX4BJlqCCea/VH1buSJQUBUjcmgXqD7BPPPJhd/TAplTDZJoR94kobVuKYw6TSCK13L4
 IKaT/H3Ygf/hmctazJMsspvlTs21BjMkGJA1rABTagjUG/2zxE9EJ8ZLKetGHr0KqE8NvK6X
 evK0Iai9Wrf+Ro3Yvv9+losWhRXKlJ6FVHmZkt+A8BOsDAbzsAB+vpT2M4nVKtio27hc+adZ
 zl6ncfYpQ8BZsUgkQmGOvVSO3kW0aZuoNcrLZUj2CCe5xWuTpfi/xlhJHwsGKAU28ZNPVFp9
 cwTDQ1dVjulh8vjldpXSsE07igiBMDvOIVavjRryivUSK9/B5vCWK7No9Rf2V/chOgXQq2YP
 JRfMGQpNUiQC/FMEg9/5JYWn+6ymnj7ej5wo1OOrq1x6G/WpOB0+Oa0YYSFJYXQHK25mG7Dh
 EnF727cAC0ZE87H4hTd2XCpps/QyHaTtIU6UefQGuRRqFqLy2oSEBgXEFe2v/S9jVazQfpbK
 lcI4Ww1qrUo/0GlScPyUlu+rWLsg/IHc9NUF+t/7ESGzbDZpl/AQGMFVTVGLtchsafaWAAX6
 7NApPuwbRRHu7yOQnXb/bCRxQ5e8wBPRYPeTUfolTc43uQ=
IronPort-HdrOrdr: A9a23:sGzRHqN3ajGATMBcT47255DYdb4zR+YMi2TDiHoBKiC9I/b5qy
 nxppUmPEfP+UgssREb9expOMG7MBXhHO1OkPgs1NCZLUbbUQqTXc1fBOTZskfd8kHFh4pgPO
 JbAtdD4b7LfBZHZKTBkXSF+r8bqbHtntHL9ILjJjVWPH1Xgspbnn5E43OgYzZLrX59dOIE/f
 Snl616jgvlU046Ku68AX4IVfXCodrkqLLKCCRtOzcXrCO1oXeN8rDVLzi0ty1yb9pI+9gf2F
 mAtza8yrSosvm9xBOZ/XTU9Y5qlNzozcYGLNCQi+AOQw+cyjqAVcBEYfmvrTo1qOag5BIBi9
 /XuSotOMx19jf4Yny1mx3wwAPtuQxeqEMKiGXow0cLk/aJAA7SOPAxwr6xtSGprXbIiesMlZ
 6jGVjp7qa/QymwxBgVrOK4Jy2C3nDE0kbK19RjzkC2leAlGeVsRUt1xjIPLL4QWC3984wpC+
 9oEYXV4+tXa0qTazTDsnBo28HEZAV5Iv6qeDlKhiWu6UkfoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0LVDVNUfY65xDPoIBZLfMB2BfTvcdGaJZVj3HqAOPHzA75bx/bUu/emvPJgF1oE7lp
 jNWE5R8WQyZ0XtA8uT24AjyGGGfEytGTD2js1O7ZlwvbPxALLtLC2YUVgr19Ctpv0Oa/erLc
 pb+KgmdMMLAVGebbqhhTeOKaW6AUNuJfEohg==
X-Talos-CUID: 9a23:ChJOkm0+Ye5KDiTYVMr3eLxfJ9oAX3H87E3sE2i4OW1Mde2tYnmQ0fYx
X-Talos-MUID: 9a23:XjcMswqLmRNFlhFjRcwez2pAH8R46YGsNEMqg80tlZGvNylQGyjI2Q==
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-l-core-11.cisco.com ([173.36.16.148])
 by alln-iport-5.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 18 Nov 2025 18:53:31 +0000
Received: from alln-opgw-2.cisco.com (alln-opgw-2.cisco.com [173.37.147.250])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by alln-l-core-11.cisco.com (Postfix) with ESMTPS id 9D51D180001E4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Nov 2025 18:53:31 +0000 (GMT)
X-CSE-ConnectionGUID: M9leBRaDSNerl8581u8RUQ==
X-CSE-MsgGUID: VHYB3SmNQcuTRetKu2wrtA==
Authentication-Results: alln-opgw-2.cisco.com;
 dkim=pass (signature verified) header.i=@cisco.com
X-IronPort-AV: E=Sophos;i="6.19,314,1754956800"; d="scan'208";a="32832790"
Received: from mail-bl0pr07cu00105.outbound.protection.outlook.com (HELO
 BL0PR07CU001.outbound.protection.outlook.com) ([40.93.4.5])
 by alln-opgw-2.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 18 Nov 2025 18:53:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N40gpzt9wav64InpGlstHYx4ivYccTosBkbwgti54vj+iexpoJpuGz3KqG/iO9zdzJ+6kspKCYQPduBL8vuNXCORzM4H2Ti/IgA31BaJ9NiiZMJFdeLsH98ZaUn/q7VsgQMMkaxqbWMp9Nmxh9rmFcXf7Lr5BgKf8r0Uvh+7ZPmYflXjXurRQ2792H04mbJFinCfxvvPETPsCwwM7HdVmVW4ZPp4hKYG1D+G7NMoteRveacSABqY46tITcBp3melPTqW+0klxQsyBdejq1ihC1O6UlcMaY4b4oTP7E86usqU37UTbpC2e1EDpZCriRnVG83nTl34ACwraklChwqaKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=;
 b=nexeg8FPBe5uAeHVOB656ZkueAwdhfLbP79zqx/eEyLCppj5MQPbXN2dr2UbzOjDwMTOVeL8PlZlhORBzgOIF8gMuvE/M9SSH2hnEgaTGWuhmeVbJrrdMZI4GOV1TQQ7dwNgdAIdYDgJe52OLlkOoCTawD4zc6AFVF/KK95bFS/w4EySAi+osDhAsX/8aq1++UeQQWGPR+1nX+ZXFFgBGw1imKimLevn853AF1DgFRdR50uABFU7r0GDHN3/EWhed+KXcW+rujXA1YicGKcdLfVybQ3UkOnG683WtqbpN4obEVnUrRlkfm2EbltfXDoGMWFUR26k5Vm3nDHembVN/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19)
 by SJ0PR11MB7701.namprd11.prod.outlook.com (2603:10b6:a03:4e4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Tue, 18 Nov
 2025 18:53:26 +0000
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd]) by SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd%4]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 18:53:26 +0000
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Thread-Topic: [PATCH v3 19/21] scsi: fnic: Switch to use %ptSp
Thread-Index: AQHcVK6ozanKNwbcFU2LSi/oClNkW7TxMIPggACrXQCABvPI0A==
Date: Tue, 18 Nov 2025 18:53:25 +0000
Message-ID: <SJ0PR11MB58966843A2F7413517F25822C3D6A@SJ0PR11MB5896.namprd11.prod.outlook.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
 <SJ0PR11MB5896D2F9DAC35FF8ADB29087C3CDA@SJ0PR11MB5896.namprd11.prod.outlook.com>
 <aRbreoKzashQcEne@smile.fi.intel.com>
In-Reply-To: <aRbreoKzashQcEne@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5896:EE_|SJ0PR11MB7701:EE_
x-ms-office365-filtering-correlation-id: a5ad9d9c-fec6-41c1-2267-08de26d3c18f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GUMa+XOyswf2U2DZtEJX5ixyVbnqEMu6+P/cmDXtAOmacozf9sTeRAPDoRo9?=
 =?us-ascii?Q?qR2z8k5QXeT9mLfPAY+A7GPyEoVeX+C/hxWS5l60LIcfeKC7KCCFM3NsyfDu?=
 =?us-ascii?Q?XRvf+ZUAdMp7LpE3/t/oqHvY0sSKto68drpWLCKm3UfWXjQJxaVeY5YFZD10?=
 =?us-ascii?Q?Ykeozb0BKyaUWqBo+5ksmQMisXGfg4Y0eflj/ooM5RboHswkIVYLwnZY9nzm?=
 =?us-ascii?Q?yI0AmWRzPPGjM1mN3VLxZP50NYARrg1x1B0A4XPj7wOb82OIiKC8xPAQEyIa?=
 =?us-ascii?Q?c/cMVe4R6/889JUofDr0fyOHxTWaBZy7L1HDcsIXPhUpi2m/VtEs+y7zVO3X?=
 =?us-ascii?Q?JN4o3/Jc/pMfyXvJdmVtr+VjdhJrfU+dtXNo7OKXNd0BTatCgyP+6W4Wh0ig?=
 =?us-ascii?Q?wE48OBu/s+ENCm0eryKnHyDrKjVG0hhzzSIJ7yMznnSWsQ8torqxOQdmtAiS?=
 =?us-ascii?Q?fQxvttI8k/8Vtlh+sDaVfD59s2NtqVm1aBvTPrvK99ej6qavEOdKi103mbOl?=
 =?us-ascii?Q?A9btywOofvoBFJGRZKsNPI82gpFJFIFZol9Tk86ZVIIDt8tBazyY6sxN1LCr?=
 =?us-ascii?Q?TZ+OiJedxLf9m3q1P9LUkgISHunZNE1vRLxo7kV186DvpkZqfSDp5/F5dtqR?=
 =?us-ascii?Q?VLb8a0n79/C/CHR6cE5cZvwFIuQbfCuvy8ZghQWoVB4qjHh2ShC7tWY/Yhp0?=
 =?us-ascii?Q?YoembG3qsq92We+EyMzJpbPLH02jv7s3Xgq89R8z1YWsoaEj0u9/QBqS98CG?=
 =?us-ascii?Q?E+ujhRMWMHrYsb56TbAvnQnShBvwyqxOc5ejXyez0+yjE13lCqHqoJ3AjUh6?=
 =?us-ascii?Q?rPb1yxWqoMrKhLwgsMbEy6sEOhPM9qYivqFoAyD1awquylfskD+XiYLIJeDY?=
 =?us-ascii?Q?HRXqJxEFN5p96UvZxUduu0XWeyXRyW+TU/7uvtaGRwu2klGjVeaW9bUevAOA?=
 =?us-ascii?Q?Yq+rJvNg0wxJafGNurhlHFv5inOJlSyc7pR9xB5mqB4bAQ/nXfRqQ3Cr8wyG?=
 =?us-ascii?Q?drPti2nq/5O7BOlcQ/ckPyVu2pd4LB9kJIHDzfwF/If2xOOJFX5tdUf9P4y5?=
 =?us-ascii?Q?A+PgQqwCFcHkg+lDCYDUiEDWWrFWmSHfLPR7/wISbMhOapBcxsWrDaDH8bAX?=
 =?us-ascii?Q?YCDa7DvxdkppsKJMNfFxu0+TXi+CL+zFNhawd8FLlnoBiuruj/H6vUoGpYu4?=
 =?us-ascii?Q?p8mT5Oc51Wmq7vxhrgmtoP9DUW9cym7+HBrw+at7j085OVrcgc/6wd/LVwv+?=
 =?us-ascii?Q?YaYSx8u/FZFXoxUEMjy9CbjkdDmo4qgTxANijYef5ngmO7BFGFnZ+4jiiJpD?=
 =?us-ascii?Q?u1xPwquutK5Ir7jU1DEu35zR6Gask+iBEVpVzffqMpw1+MD2XueXMc0eU4BW?=
 =?us-ascii?Q?r6CALNEr0gwe83nf2B2xYZYit1lxnDV434Qfh/nOHtaX9QbpQGDI/C/mr5xs?=
 =?us-ascii?Q?cS5/dgufeEKq2mR+lQXEGXOrjmjHzg4wAOr7EMWRbTtdPg8w26/rkrgKf0S/?=
 =?us-ascii?Q?Kk26pg5OvuuJQYdxheC0ZPQTOIupS0HpgvbC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5896.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4g49PWLq4LnszL+DPUrVw0Z7BDQjRmBANGMTzIKXkbkHa7COXiVWygzlSygC?=
 =?us-ascii?Q?+nb6PB2Xd4khvp858iobsixHJecUd/4YHN/PZUQy+/1WSXD27l+43WfYMgCC?=
 =?us-ascii?Q?LR7eaPRDh7FRFGZ5D0/btclpOpIYReYqEBUnktcVzjozDgYqWm4UnejrFfXc?=
 =?us-ascii?Q?Rb6Sc4Ih87OjMK9ZuVGuCGvBtUttKkbZQSEpHLH8FA/+3c5QGFf4u02PT2ez?=
 =?us-ascii?Q?a78QzpaImmCxx4QoCcqaq9t4ocVv+T5fWLZ5iBeb1H5o4ZlWAsn/rec9R5Wq?=
 =?us-ascii?Q?JTALIiE/h1gJ3hvajhsqKzCvZhASmfDRuUE8Ll96efoMG/9Mv49/rCDqx38l?=
 =?us-ascii?Q?AsiZzX2Ng3wSUPs3pARBgf7enrJbwaF6tvf7w3nRGbgYe7CzDZ3Ho+yrkQ47?=
 =?us-ascii?Q?AASTZE4+Jk61cy9X8wrrElvkA4BQ+pQqfvc26pL32X3DzATMdD+n71h4tRyG?=
 =?us-ascii?Q?5M/Ilfs93s9BJi9aa+WvCEnPjdYWPzWhs4WfLaIG9W2eaDeYvwIR6317wS8i?=
 =?us-ascii?Q?nloa7xlzahUJ3qKEuOLIR/OvCr6DnHyvZNvuNAp9YWwz6WHLwfDHGoGoc6Mc?=
 =?us-ascii?Q?YLp9BXp1twFg/eogDMzsWgTerYBtPbM7Y/WfWaQHY42OOxPQYZkgRT4Ewc7r?=
 =?us-ascii?Q?QCj/EFu90lrEi7t2XWUu1O0p7z9x/vG6cE0MLfMhTXG2YsjPuDpkI3KeFLpr?=
 =?us-ascii?Q?9ro/SW+ywENYsS0fadcxk+SY7d1ctb7QfmuNWqZN9gyNvFsVBeSBc2FGO0a8?=
 =?us-ascii?Q?j8p4aeKWdR0iT1J3dOk+rPgEUCdfIeZJ1vsfZCnjUEf10c6Z6SWPC2GaPIHc?=
 =?us-ascii?Q?sPZP8UT18E8zUee4/il3Ry9+NHTw6gmBPmEftL1kns4ZvuoSmTdTpOKIpj5q?=
 =?us-ascii?Q?FOamVJ7c4XwL0umzSZFTFADpStj/Mnjt3D6CjxSyqj48Y38stZcnOaXtXo4Z?=
 =?us-ascii?Q?2iKJ7vTMhyezmZV6Ogsio5S2Png+Hr25OGunbheGFvwg4+3d8C7hLD0Uxfa8?=
 =?us-ascii?Q?VvGic6BhVdlzMp7vhjkH4bw/Vl5Y9kkneS27wo59pOXam7oASDueEHJcaYD3?=
 =?us-ascii?Q?6FvfdhFTOOvYnAadbvQBHx3BFNTBpMbtImw/wOzdlSXdpG0dIKFTeUaeMc4S?=
 =?us-ascii?Q?hRsQ7eC1mX4ytKtQllHlWiHwHnUkDGcwtwqCoC2+OADdM6838YpHV9rkn88d?=
 =?us-ascii?Q?5XV+7ncpQjUc7SrP7po1ytI2jQ9QBCK2ZW/e76Cb2OW1yrwJjh4cc2RB13Dx?=
 =?us-ascii?Q?eLHSMowtXBHzcRQQBXK9FQRcut0VwkJ2w/BSoIG4MnkXJvXfJ8wr5cfCggB4?=
 =?us-ascii?Q?Su3cBFP/Fyvg6GVQXmIc/8i9a0EdvhtjarM7zNQ+aue6pIhdDtkSQKvI6ZCp?=
 =?us-ascii?Q?sujh9K82JUkylQ/12yzeNXqk5nWy2Q5kavriDPhOPfTQ9RZClXpyJOiRglsH?=
 =?us-ascii?Q?OTHbQ2HoJ+ojQjfb2zGtJSldHACjTWb3Nu3oaNkObAw0XsPVVKb8WQil8yY3?=
 =?us-ascii?Q?UIL8SrClUK7KzbmOWYZqJe76kOo7z554Hk7NFBl75kDq7q2UPM0ngQ5JYgTF?=
 =?us-ascii?Q?af7AZBJ7ceEnDM2oWAdVNhBi2cFlDJaNrrFzcJyE?=
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ad9d9c-fec6-41c1-2267-08de26d3c18f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 18:53:26.0249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4oM0CPuVrjk8BArkEZqVmX25kgwilVgpoUtzL7jXnPF5Wqo8A12k/Bv+wSykoN9Ag42nrO1qlkYSH02XL2axqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7701
X-Outbound-SMTP-Client: 173.37.147.250, alln-opgw-2.cisco.com
X-Outbound-Node: alln-l-core-11.cisco.com
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Friday, November 14, 2025 12:43 AM,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
 wrote: > > On Thu, Nov 13, 2025 at 10:34:36PM +0000,
 Karan Tilak Kumar (kartilak) wrote: > > On Thursday, Nov [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.142.92 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1vLQpd-0003Nz-H1
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-trace-kernel@vger.kernel.org" <linux-trace-kernel@vger.kernel.org>,
 Petr Mladek <pmladek@suse.com>,
 "Satish Kharat \(satishkh\)" <satishkh@cisco.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Sesidhar Baddela \(sebaddel\)" <sebaddel@cisco.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Friday, November 14, 2025 12:43 AM, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Nov 13, 2025 at 10:34:36PM +0000, Karan Tilak Kumar (kartilak) wrote:
> > On Thursday, November 13, 2025 6:33 AM, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
>
> ...
>
> > Can you please advise how I can compile test this change?
>
> I have added the following to my x86_64_defconfig
>
> CONFIG_SCSI_FC_ATTRS=m
> CONFIG_LIBFC=m
> CONFIG_LIBFCOE=m
> CONFIG_FCOE_FNIC=m
>
> You can always add the just a one (last) line to a configuration stanza that
> can be merged to the .config with help of merge_config tool. It will take care
> of all needed dependencies.
>
> --
> With Best Regards,
> Andy Shevchenko
>

Thank you Andy.

Regards,
Karan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

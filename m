Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D06F3C60AC6
	for <lists+openipmi-developer@lfdr.de>; Sat, 15 Nov 2025 21:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SIJeGEPI47oa19lyXatYkXBel6zPliUbptXj4CywlIQ=; b=WDBCAkro8wxBAGxLT44OzwqNJM
	O2cGcTYJqFSC7yUxCI0v7w3VdJZEKSk16/RwVepFhGelPPXl95pe9mwWepMq/vd9hM3Lb0ERe0dpS
	iI19t3W5m6BwGTWjPjLSwgBo0YhwtZG8JWxIUJb1FTQaNdxI10YUAJQb6LkzHGFbmbEY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vKMry-0000Ov-Mc;
	Sat, 15 Nov 2025 20:27:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartilak@cisco.com>) id 1vKMrx-0000Og-F5
 for openipmi-developer@lists.sourceforge.net;
 Sat, 15 Nov 2025 20:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MFw/Z1Sf8SjzDqIL5mUOFLjLDVfmbv7DCp/A06Y2PGI=; b=lC2EaEWSGTAALden7/K7D/cbey
 ljrquxTBap6LTZXw+8UmgGYWOTArEu+pbNBOa5OVugBcsLK1IqvnrDRT+8zIdhg8Zx5W5rGWTXqpI
 3DRHMvP4mV3vp/MhpMYySBTHtNCONmX2CDdppd+w9lRHnIM8mK3FFR8Jw6CPS1Vc9Gto=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MFw/Z1Sf8SjzDqIL5mUOFLjLDVfmbv7DCp/A06Y2PGI=; b=STwtpBVA6yXCsd799n11GYWdE7
 7QOGzo7bUI2lwMjDI4pFF/6rEYPFqyOoic2bZY2QxjHX1RRfkh9Q9UJQQjFHNQwr43FsVdgqxLyBM
 /I52+HZvcXDn6hx+i5LUvKlIo3m7TEXCMEpNZLIjb1lhdYsjsRyFk/KHrmjTry+v8egE=;
Received: from alln-iport-8.cisco.com ([173.37.142.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vKMrx-0006TK-LS for openipmi-developer@lists.sourceforge.net;
 Sat, 15 Nov 2025 20:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cisco.com; i=@cisco.com; l=2460; q=dns/txt;
 s=iport01; t=1763238457; x=1764448057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MFw/Z1Sf8SjzDqIL5mUOFLjLDVfmbv7DCp/A06Y2PGI=;
 b=WN1982folbJ/3gCP0btFDk3lus1qrn+pFvOfGvGFE8VJRFFKjFcqkZtL
 30LPs2AF2ryw2+tT9xQp561YAYRIzNXH063M6aMizL85u1ZTzt421CTq+
 I7+6UrY+mmCsdX5wjYCGzw+M1whMqf7YGBR+MqtgmgMXOJ+ui1ph+kLBq
 leQbGcLIacZWf4CcaOKJk4TlwqQDo6olPcqKHMK6UpvAayRtMDUOhhGPC
 R2vnVZhewTsFzWfYnUhFRt9zULIJgOQgzvU6ot6/2ORIvbR7svggN9zK1
 qiuOEl7+XFUPgwJVt9JEynlxEB6gHuN4MrLhATVT2ST66n+FVFxEfuJb/ Q==;
X-CSE-ConnectionGUID: hnLALGjZT/WLR7g8iCgRTA==
X-CSE-MsgGUID: 52dMKs7oQtiRUfWhyxp4Jw==
X-IPAS-Result: =?us-ascii?q?A0AuAAB44Rhp/48QJK1aHAEBAQEBAQcBARIBAQQEAQFAJ?=
 =?us-ascii?q?YEXBwEBCwGBbVIHghtJiCADhE1fhliCIQOeGoF/DwEBAQ0CUQQBAYUHAoxaA?=
 =?us-ascii?q?iY0CQ4BAgQBAQEBAwIDAQEBAQEBAQEBAQELAQEFAQEBAgEHBYEOE4ZchloBA?=
 =?us-ascii?q?QEBAxIVUhACAQgOCi4xJQIEAQ0FCBqFVAMBAqI0AYFAAooreIEBM4EB4CaBS?=
 =?us-ascii?q?gGIUgGFbjuEPScbgg2BV4IwOD6ERYQTgi8EgiKBDoYnjEyGcVJ4HANZLAFVE?=
 =?us-ascii?q?xcLBwWBIBAzAyAKNC0CFA0QEg8EFgUtHXAMKBIQHxgTYFRAg0kQDAZoDwaBE?=
 =?us-ascii?q?hlJAgICBQIrFTqBaAUBHAYcEgIDAQICOlUNgXcCAgSCHH6BbxsPiTWBCQUoA?=
 =?us-ascii?q?wttPTcGDhsFBIE1BZQeUYIsAYEPgS4OUzCWegGwHwqEHKINF6prmQYiqHQCB?=
 =?us-ascii?q?AIEBQIQAQEGgWg8gVlwFYMiUhkPji0WkxsBtU54AjoCBwsBAQMJk2cBAQ?=
IronPort-PHdr: A9a23:WHR1DxdSVfA89ArvtN7zVpkblGM/gIqcDmcuAtIPkblCdOGk55v9e
 RCZ7vR2h1iPVoLeuLpIiOvT5rjpQndIoY2Av3YLbIFWWlcbhN8XkQ0tDI/NCUDyIPPwKS1vN
 M9DT1RiuXq8NCBo
IronPort-Data: A9a23:B1T6nqgbtDQwgi+t+cW1i7ppX161OBEKZh0ujC45NGQN5FlHY01je
 htvDGqGPqyOMGLzfN8nO46y80oCsZLSx94xSQVoqXpgRH5jpJueD7x1DKtf0wB+jyHnZBg6h
 ynLQoCYdKjYdleF+FH1dOOn9SUgvU2xbuKUIPbePSxsThNTRi4kiBZy88Y0mYcAbeKRW2thg
 vus5ZSOULOZ82QsaD9Nsvve8EoHUMna4Vv0gHRvPZing3eG/5UlJMp3Db28KXL+Xr5VEoaSL
 87fzKu093/u5BwkDNWoiN7TKiXmlZaLYGBiIlIPM0STqkAqSh4ai87XB9JAAatjsAhlqvgqo
 Dl7WTNcfi9yVkHEsLx1vxC1iEiSN4UekFPMCSDXXcB+UyQqflO0q8iCAn3aMqUY/MJeJU5Mx
 8BfFxQ3MR/Thsm5+o6SH7wEasQLdKEHPasWvnVmiDWcBvE8TNWbHePB5MRT23E7gcUm8fT2P
 pVCL2ExKk2eJUQTYT/7C7pm9Ausrnr2aSFZrFuWjaE2+GPUigd21dABNfKLI4LVHZwKxh3wS
 mTuoj71JzIBa9um1Tu/z3yThv7fhX/ZR9dHfFG/3rsw6LGJ/UQUEBAQVEO+oLy1h1CzX9VHJ
 lY8/is1sbN070u2VNLwURqir3PCuBMAM+e8CMUz7AWLj66R6AGDCy1cEHhKaccts4k9QjlCO
 kK1ou4FzAdH6dW9YXmc7byT6zi1PEAowaUqP0fokSNtDwHfnbwO
IronPort-HdrOrdr: A9a23:MRwv7KjXm8jLVVqB7yN4NYdSH3BQX5V23DAbv31ZSRFFG/FwyP
 re/8jzhCWVtN9OYhAdcIi7Sde9qBPnmaKc4eEqTNGftXrdyRqVxeZZnMTfKlzbamHDH4FmpN
 1dmsRFebnN5B1B/LnHCWqDYpgdKbu8gd2VbI7lph8HI3AJGsRdBkVCe3qm+yZNNXB77O8CZe
 GhD7181kKdkBosH6OGL0hAddLu4/fMk5XrawMHARkI1Cmi5AnD1JfKVzKj8lM7ST1g/ZcOmF
 Kpr+X+3MqemsD+7iWZ+37Y7pxQltek4MBEHtawhs8cLSipohq0Zax6Mofy/AwdkaWK0hIHgd
 PMqxAvM4BY8HXKZFy4phPrxk3JzCsu0Xn/0lWV6EGT4vARBQhKSfapt7gpNicx2HBQ++2UF5
 g7mV5xgqAnSC8oWh6NvuQgGSsaznZc6kBS4dL7x0YvIrf2LoUh7LD2OChuYc099OWQ0vF9LM
 B+SM7b//pYalWccjTQuXRu2sWlWjApEg6BWVVqgL3f79F6pgEx86Ij/r1Wol4QsJYmD5VU7e
 XNNapl0LlIU88NdKp4QOMMW9G+BGDBSQ/FdDv6GyWrKIgXf3bW75Ln6rQ84++nPJQO0ZspgZ
 zEFFdVr3Q7dU7iAdCHmJdL7hfOSmOgWimF8LAV27Fp/rnnALb7OyyKT14j18OmvvUEG8XeH+
 2+PZpHasWTW1cG2bw5qDEWd6MiXUX2CvdlyOrTc2j+1/72Fg==
X-Talos-CUID: =?us-ascii?q?9a23=3AFRyjemvBEFgLo/GRz6h/qJla6IsldFn06FjSEXP?=
 =?us-ascii?q?/NkJTF7LFSHSfwp9Nxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3AWWQYFw4EDckKB76zSbqhXSXPxow1uaiLK1tSlqw?=
 =?us-ascii?q?auvO5OxNwKieF0BaoF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-l-core-06.cisco.com ([173.36.16.143])
 by alln-iport-8.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 15 Nov 2025 20:27:25 +0000
Received: from rcdn-opgw-4.cisco.com (rcdn-opgw-4.cisco.com [72.163.7.165])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by alln-l-core-06.cisco.com (Postfix) with ESMTPS id 0DE6918000251
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 15 Nov 2025 20:27:25 +0000 (GMT)
X-CSE-ConnectionGUID: 9IGLtmi+SbWDArDZBSRfYQ==
X-CSE-MsgGUID: OwvumJ/eRDCics6ueVBrMQ==
Authentication-Results: rcdn-opgw-4.cisco.com;
 dkim=pass (signature verified) header.i=@cisco.com
X-IronPort-AV: E=Sophos;i="6.19,307,1754956800"; d="scan'208";a="61701058"
Received: from mail-dm5pr08cu00407.outbound.protection.outlook.com (HELO
 DM5PR08CU004.outbound.protection.outlook.com) ([40.93.13.103])
 by rcdn-opgw-4.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 15 Nov 2025 20:27:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y/Zfi6W5LuTTMhUxXAydYPEJj3UhQ/r7u8BdXcIgbkAPXVDgR/f0IlAeGZ4ZbthcdIkoDOQyTtXRRMXX+0xQGGTlAn4kVUhcSjtcSsono/lh9PItyxzjlA5c8AvTJ75yG5gdnNyACHBSOkWBUCfQ4xma5G5OnNkAKaYcymBUnYa7hkvOhtt5GbI07swmSEGQF2J+6X4+BMq19WQ3fNOhUkFr5cq34QZSx70pee6VqP8x3MZvi9oGeoFf8eyqxsOSYU2fWL1Ka2ULZESAzihOOLjEb2W7vnJJYHk30FUp3H3Dd0+dd18SMk+IdkU7u1li8QZwnzgQA/orW6dXQNLlYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFw/Z1Sf8SjzDqIL5mUOFLjLDVfmbv7DCp/A06Y2PGI=;
 b=ejqVQ290Ii4mWw5iKhsOXD8PBvwwHu8O7BnuT7/J6DKsLxVg0KfJzWz33QUM9JTsFUzE6PDEnzszsnM0pIdnOXc72br0NOy9MsyBDdYZqp46yDbHfUWtnjkw+FQU+s52nWUJhTon5oCWQVGbz+4NcjtTFjOyALWSqdYFY8RkKoavntXken2PlB4pIsNJnjNWVFAYP/l5rpVRD8EpU5o6oGDpOwwfPm4mMmacc9IopIJz2ymCEKxCCVK+/y5pmwaq9DfNUhm8dsb/LwWFvTRCeEzeoxpDdhC87EClZ+DS6dfNnEWkpJc8MqBbvJ3/RiqstVlUC5FCdNlNiJMSKyloCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19)
 by DS4PPFE70B31BEF.namprd11.prod.outlook.com (2603:10b6:f:fc02::5a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Sat, 15 Nov
 2025 20:27:20 +0000
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd]) by SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd%4]) with mapi id 15.20.9320.018; Sat, 15 Nov 2025
 20:27:19 +0000
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
Thread-Topic: [PATCH v3 20/21] scsi: snic: Switch to use %ptSp
Thread-Index: AQHcVK6i2TuKalB1aEOcW1L+o6TUn7T0MoDA
Date: Sat, 15 Nov 2025 20:27:19 +0000
Message-ID: <SJ0PR11MB58960101609D15FB8F6FB5B2C3CBA@SJ0PR11MB5896.namprd11.prod.outlook.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-21-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251113150217.3030010-21-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5896:EE_|DS4PPFE70B31BEF:EE_
x-ms-office365-filtering-correlation-id: 06dc7afe-7be7-41d7-220d-08de24856052
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|921020|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?UTyLHl4BJYTK4mtPS91Sw2Srl0NHvlfMZaTqLxu2rUWxwfXqFudlc+5TWZ?=
 =?iso-8859-2?Q?BJrEBNZocoITs1OavCRqzXqvbXtC3nyiTs+X6BNCP++7KlQ2g2MJnYpALp?=
 =?iso-8859-2?Q?Bn5YPtijrc89YM4uqb1zvNiGQUKCmcJm5aV9n2jDlaisDBGoiOEdehli0Z?=
 =?iso-8859-2?Q?AiBZgIYvmeuLyJ94TRvdhfcWNgAInVk2bzv3iJn+ETi2yjnYFqeJDEsP/c?=
 =?iso-8859-2?Q?52tSR8uLyZ/cTHCDYdEy2M4TMyDvk7xp0fRxtDf6gySeGMeb9hFUl3m94o?=
 =?iso-8859-2?Q?9QGxesrQwqKEd/FjIbfevU9AIIu/4425oQt60PEDl2KHxaaeh+AA/kE+If?=
 =?iso-8859-2?Q?cTIhv+ekBi5Kio8han64MSlNeDN+sR6xKhQ/jxgIlLI9yNDFUyww8nWAm5?=
 =?iso-8859-2?Q?SxG/facdPQxoPEpca86hn/+obDhPgWbR/ztj7tbF7ANig0cXm/9lKdnZoZ?=
 =?iso-8859-2?Q?e2S/yQsrsL8JID1eQiuiQr7psiOVeOBrtmr5hP9t6gIIVMZnZvIcwbi1Dc?=
 =?iso-8859-2?Q?pIvEJrA62KfIEsG0lGAYmYo4C0gZHqFgr7DWsaVfEAJWKIQEw+NVLL06fR?=
 =?iso-8859-2?Q?kxKmQM6BCA0FLcSlIScOrAAOBXrkQx8CDVbtdiiK6WgcSEAZeGneow5obu?=
 =?iso-8859-2?Q?DAj3Um0LuFxhd4vwv0VnU/9xHqXWAgIWM8XtzAwyS//bRDdCRnV1M1Ynt3?=
 =?iso-8859-2?Q?a5G+dYsTHrt3OFCJQcrYObQ6i3mZy/rMEXFoSyhPJXNNEdgWxwoB1HncUE?=
 =?iso-8859-2?Q?4rYNimG0/N/xCyPNM8ep24M113OR2BqbeCl3DNYllfbQxGN78FCOYN6ZIE?=
 =?iso-8859-2?Q?phsDl0tQWTOljwdp7051kUzoU0wbE9PpBzs61KFHlB25iEfK2WgEBoV82H?=
 =?iso-8859-2?Q?C3yaXZ0BCTPUNLjRuQmgvzHU5ng4f8VDQtXXPfR+oYzmwJKohYU9q+EL+t?=
 =?iso-8859-2?Q?p41Xg0+NxjykvmlvZM0im3m1zsEQ6O7xp9jzLSW3CSy7Ug4BD8U/f3loX6?=
 =?iso-8859-2?Q?m2dgZ7IV42D8gpPaSgZGxQfxdjuNZF06eztZWNwwtTbG2xJCCy5kJDjABj?=
 =?iso-8859-2?Q?kprDaZzeCplxAQW8xfkkmstWs5hIltTmdYlLszIG41MjqxWZJZpClawbb1?=
 =?iso-8859-2?Q?XipTfYbbjUUTJ5AY/cJ94Ocn6B1jSeJph/3BbItNRMvxRi6ONwCwbBDbP+?=
 =?iso-8859-2?Q?Le6I4IDVHcH5ofHexkpBJuMrroWBuSTjhDDNC3TqJdl72rmfZgLyVoS77N?=
 =?iso-8859-2?Q?yU/NIXbFlb8l9dK8q5jipLd1/FVk4Pp2P60jy+9m9cVnFbtvQjhXDypzeb?=
 =?iso-8859-2?Q?Ko1fH/QTTvV8pcNWJXq7fLf1O2d3JWe1yLLsUfK2TmQq0D5l5DpbB890yC?=
 =?iso-8859-2?Q?BVF/Ar5qTiLG7xggV8j4UXRb++gCvrDvk/yLsnEeOoqoE6pmrgwYAC6qZd?=
 =?iso-8859-2?Q?7sl4WiSn6wVEF9onXMgQmhjZwpqInrPFVmYPD5v5xlZBo9t8R0x2wBdi0r?=
 =?iso-8859-2?Q?1cJFwkDZ8sMDxKKKjLHjDI1tR9ldHAmzEmiKNR0GMuTz2ixBFx6wGgLXzl?=
 =?iso-8859-2?Q?wRoYHekrIzXtWBvjBDW4wBo0MryqgrcAtLVl4aPMAV4isfK9tw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5896.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?mKPbxCR50Zo/kBjFEIBIzbg6Es+ioxMMbEP7y4nJHK5XxBuKmBIhsyNe+c?=
 =?iso-8859-2?Q?P2PSImE1GXaPLwYEl2o0/N61ZqojPjfvrKsOv95iPU39dTSM2smMfyKa+b?=
 =?iso-8859-2?Q?yJ4MGTfyQcIrBV8ERN3vhUzyykJsgm9hEjRp0sYKTEOshqL4DV0ZfF0XIg?=
 =?iso-8859-2?Q?gSDYhrSwytejuBS2OhEKMlIRkHHQ7vytYCaFWfly2CZuaC6WJXN+qiqsDq?=
 =?iso-8859-2?Q?1wx+Flmo+eU+kxwC2S6ohnAeGzoxOeATpzP8czrMmvNgNv2SUtLjE6cpa6?=
 =?iso-8859-2?Q?CclM+6tyecZ4BTj7JPQNb+6McoBOVK2q7+LBl8VLvNUQ7Auam18+LneqCQ?=
 =?iso-8859-2?Q?OdOlDAEMcBPZg8du9cjYXV5ziDfXS8eYRmiGGpRe07zxj+E8FoJ6/CTVMd?=
 =?iso-8859-2?Q?7Kgi/HmvzryfBpo19AiuIOsdQYexfBhlJrLeDouh2L4yI08/Bbbl/kF8S5?=
 =?iso-8859-2?Q?+h6QuqJAMGwbkVFi3H1iqPsWXwLhY+gBMTbRuAnRl3CW/Yqzn1g39aa01o?=
 =?iso-8859-2?Q?cSQBDMI/SLuz65WdsanquiGJtbc/0CizuwL73kKQEb3Npn7di05o36xFWv?=
 =?iso-8859-2?Q?DEHcIldFhQXWwU2/gi5S2mXbMZmMCcyxEChQZkp0IE5lY0kODGyWfdDf2y?=
 =?iso-8859-2?Q?bETAGONsgtujjymUy1NAzor3kNZfB5tXwvpdVhrcAXo6LgPM0rFNGD6A58?=
 =?iso-8859-2?Q?6e/TskoSTgrkkg2uQDl2fzAYuGSIWLRUOariSlHuDDWemN2wBqBA0MUTPl?=
 =?iso-8859-2?Q?hgWCGKJIeDmhFv0/Y6bb+DT1H8rfdgxFfpEsh0+GSrBLTQhdDNi1t12f6f?=
 =?iso-8859-2?Q?XvROYBBSf7yzbEeHNW061lBKryfZqrvEHoMQuxPZKog/eOcdils30zwWnx?=
 =?iso-8859-2?Q?b/g6Qe2gspFfKmOdFOxepWKUsWsbnn8706go1E0uxXQTSvmXBcWwXBiYOd?=
 =?iso-8859-2?Q?XQcuKAqoZHHqw9Fb33/Qls/MseykH+NwDBNjX8o7TzR42pQKLf0HRYYGmb?=
 =?iso-8859-2?Q?0TLbowvsUzqn8Lnw42QWD5zzs9U80/mBCiHgHGcw1sFZXpgtC7b35d9BMt?=
 =?iso-8859-2?Q?zmA+oMzsghS3CdaIpJDV6n6mkI4QAlzbJ3RtlkXKbZ9eyBsA+YLQxaQq7p?=
 =?iso-8859-2?Q?HlVl87dlyRvwiXVa6gN4AxQQFclSPqONjcJ0ONO8DnDed4HSKwTNi5Ck1a?=
 =?iso-8859-2?Q?L2SYeW3kbJ41H7lF8WtreIUTJlevxAXf9H3833F5uA/caq+ev/Kf0FdDGK?=
 =?iso-8859-2?Q?yzS1iLutsB5PRhD1boh2gNU8RNC+6uPW1HLm0zHdUv6O4FqR3bbk/cLXOO?=
 =?iso-8859-2?Q?11lyG2zvkvia2pfWVROOpk8PgmvBHIHfCsIaDBWk9vXHFIgB+XyRPiaTTS?=
 =?iso-8859-2?Q?bsGblhc1scXXBJm6wDK24/nRbjFauqXawoxqAO16Jnavr6awCe+E0I5Ryf?=
 =?iso-8859-2?Q?nqUSFrJWfmemtxmMsGaUrdB9yWH/b6Zh2b4cYt5w+ekjkzVh5jn9WBJH9E?=
 =?iso-8859-2?Q?Dk9asRPl15WV6Ci7yTnuTI0CQdvVNtek4nLjE5XF2Jr3UX0Z/+U8K7i8QQ?=
 =?iso-8859-2?Q?yimx4UwBS+uDjiCMwzI1l50RwO5DpDjuoKLQabZf9rzmCxWZaarV19F+IU?=
 =?iso-8859-2?Q?RR+FiRm8NFYq8q/t4x9gOYsXV9u/TNMndx?=
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06dc7afe-7be7-41d7-220d-08de24856052
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2025 20:27:19.8090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6sGSzNOwK5N2JX7LP+uBMy+DCipcCcM2IKRDSemuaKx2VgJ+Cpek7Aeyqj1K9YjSnc1FgC1NdcbLcIoAPUC6Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE70B31BEF
X-Outbound-SMTP-Client: 72.163.7.165, rcdn-opgw-4.cisco.com
X-Outbound-Node: alln-l-core-06.cisco.com
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.142.95 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1vKMrx-0006TK-LS
Subject: Re: [Openipmi-developer] [PATCH v3 20/21] scsi: snic: Switch to use
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
 "Gian Carlo Boffa \(gcboffa\)" <gcboffa@cisco.com>,
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
 Kishon Vijay Abraham I <kishon@kernel.org>,
 "Satish Kharat \(satishkh\)" <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rodolfo Giometti <giometti@enneenne.com>, Maxime Ripard <mripard@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 "Narsimhulu Musini \(nmusini\)" <nmusini@cisco.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Sesidhar Baddela \(sebaddel\)" <sebaddel@cisco.com>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sven Schnelle <svens@linux.ibm.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "Arulprabhu Ponnusamy \(arulponn\)" <arulponn@cisco.com>
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
> drivers/scsi/snic/snic_debugfs.c | 10 ++++------
> drivers/scsi/snic/snic_trc.c     |  5 ++---
> 2 files changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/scsi/snic/snic_debugfs.c b/drivers/scsi/snic/snic_debugfs.c
> index 9dd975b36b5b..edf3e5ef28a6 100644
> --- a/drivers/scsi/snic/snic_debugfs.c
> +++ b/drivers/scsi/snic/snic_debugfs.c
> @@ -282,8 +282,8 @@ snic_stats_show(struct seq_file *sfp, void *data)
> jiffies_to_timespec64(stats->misc.last_ack_time, &last_ack_tms);
>
> seq_printf(sfp,
> -                "Last ISR Time               : %llu (%8llu.%09lu)\n"
> -                "Last Ack Time               : %llu (%8llu.%09lu)\n"
> +                "Last ISR Time               : %llu (%ptSp)\n"
> +                "Last Ack Time               : %llu (%ptSp)\n"
> "Ack ISRs                    : %llu\n"
> "IO Cmpl ISRs                : %llu\n"
> "Err Notify ISRs             : %llu\n"
> @@ -298,10 +298,8 @@ snic_stats_show(struct seq_file *sfp, void *data)
> "Queue Ramp Down             : %lld\n"
> "Queue Last Queue Depth      : %lld\n"
> "Target Not Ready            : %lld\n",
> -                (u64) stats->misc.last_isr_time,
> -                last_isr_tms.tv_sec, last_isr_tms.tv_nsec,
> -                (u64)stats->misc.last_ack_time,
> -                last_ack_tms.tv_sec, last_ack_tms.tv_nsec,
> +                (u64) stats->misc.last_isr_time, &last_isr_tms,
> +                (u64) stats->misc.last_ack_time, &last_ack_tms,
> (u64) atomic64_read(&stats->misc.ack_isr_cnt),
> (u64) atomic64_read(&stats->misc.cmpl_isr_cnt),
> (u64) atomic64_read(&stats->misc.errnotify_isr_cnt),
> diff --git a/drivers/scsi/snic/snic_trc.c b/drivers/scsi/snic/snic_trc.c
> index c2e5ab7e976c..6bad1ea9a6a7 100644
> --- a/drivers/scsi/snic/snic_trc.c
> +++ b/drivers/scsi/snic/snic_trc.c
> @@ -56,9 +56,8 @@ snic_fmt_trc_data(struct snic_trc_data *td, char *buf, int buf_sz)
> jiffies_to_timespec64(td->ts, &tmspec);
>
> len += snprintf(buf, buf_sz,
> -                     "%llu.%09lu %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\n",
> -                     tmspec.tv_sec,
> -                     tmspec.tv_nsec,
> +                     "%ptSp %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\n",
> +                     &tmspec,
> td->fn,
> td->hno,
> td->tag,
> --
> 2.50.1
>
>

Thanks for the change, Andy.

Acked-by: Karan Tilak Kumar <kartilak@cisco.com>

Regards,
Karan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

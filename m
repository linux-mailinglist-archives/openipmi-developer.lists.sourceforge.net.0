Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A20895F7F
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 00:15:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rrmPf-0005o5-KO;
	Tue, 02 Apr 2024 22:15:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wintera@linux.ibm.com>) id 1rrdZM-0000Uc-Nq
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 12:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cqNk795UztyaS7ZOTqsgy3G6Bzl6LkH6VxOUkSRZDWE=; b=Dxukpw1NDDeT3ImaTXoy2J1pHt
 1GWCBXOukPXUGXOVMKbJoXxM0IntEgeAtZ+/eAvpxurdH8CfDAA7gb5EmmB8WPE9gN0Vh1wQj8Rtq
 TyH2LjRDgAgVQS0L9BPoKbuzjWqSJZzDyMvIhsZeOmEpt/qNssH2d4l/zgfTJAg7J8eQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cqNk795UztyaS7ZOTqsgy3G6Bzl6LkH6VxOUkSRZDWE=; b=K5wcxTIxC5SRqeh+4d+rE0m7nS
 E421pHSbjYsS+TUbt9veBKoJ9mBzPtFFiXJ857iSQCPGPOm3QO/akW0ya8C1RnaetY5mkdMsyg5X0
 MaFSw6jSJZZ6xejzy6Dhjym9dl9/SAJD97iMFXKWAKvpziTfa+dF42Pi2YUgbsro5XpU=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rrdZL-0005Sz-30 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 12:48:53 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 432CTJno003298; Tue, 2 Apr 2024 12:48:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=cqNk795UztyaS7ZOTqsgy3G6Bzl6LkH6VxOUkSRZDWE=;
 b=pe5Uc6ckRQGoPKRDNGIuCZjvW9CCS78ZFZ5tCAUFKWtooQXGOnFCZ2arOYqT0xeUfP9s
 i4nIUcoggh26pYRIFcstX8a6Q/BDARG/hcAEayONrnB5YNXSAm/JIoNr5SJfcycY16CA
 e9zGUDQN1y8Kyrq8qI+b4dRBsPxOkEEkqpZIwwWRhh8fTIRQZaCqfPV0r8cUA0cmrVx7
 rChB99m0wi/ueQInDYrziML0F+2pBTAHeMDVoXJTZu0mGDrkh2dmIPEKpmb8G6OlEe99
 AzzIa6xN8mX9IAf+/t7s2yww2L54PyTzeX3pEIxkFGiL2TMXRHzkwqUYgFPO+MipSvOa nQ== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3x8hvx82nc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Apr 2024 12:48:22 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 432CmLxL001953;
 Tue, 2 Apr 2024 12:48:21 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3x8hvx82n8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Apr 2024 12:48:21 +0000
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 4329nZeD008463; Tue, 2 Apr 2024 12:48:19 GMT
Received: from smtprelay06.fra02v.mail.ibm.com ([9.218.2.230])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 3x6w2txsc6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Apr 2024 12:48:19 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay06.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 432CmG0h28967614
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 2 Apr 2024 12:48:18 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D8E5A2004D;
 Tue,  2 Apr 2024 12:48:15 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5982520040;
 Tue,  2 Apr 2024 12:48:14 +0000 (GMT)
Received: from [9.152.224.141] (unknown [9.152.224.141])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  2 Apr 2024 12:48:14 +0000 (GMT)
Message-ID: <ea4ac7a3-13ae-4d22-a3d9-fcb7d9e8d751@linux.ibm.com>
Date: Tue, 2 Apr 2024 14:48:14 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Allen Pais <apais@linux.microsoft.com>, linux-kernel@vger.kernel.org
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-8-apais@linux.microsoft.com>
In-Reply-To: <20240327160314.9982-8-apais@linux.microsoft.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: Ku4a1547K_GAebsL_C6x0-P2EehptrTF
X-Proofpoint-GUID: nppBqWZFDQLnaADD-aCs4ILGDo6MGGqc
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-02_06,2024-04-01_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0
 mlxscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 adultscore=0
 clxscore=1011 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2404020094
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 27.03.24 17:03,
 Allen Pais wrote: > The only generic interface
 to execute asynchronously in the BH context is > tasklet; however, it's marked
 deprecated and has some design flaws. To > replace task [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rrdZL-0005Sz-30
X-Mailman-Approved-At: Tue, 02 Apr 2024 22:15:26 +0000
Subject: Re: [Openipmi-developer] [PATCH 7/9] s390: Convert from tasklet to
 BH workqueue
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
From: Alexandra Winter via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Alexandra Winter <wintera@linux.ibm.com>
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 HaraldWelte@viatech.com, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, maintainers@bluecherrydvr.com,
 peter.ujfalusi@gmail.com, manivannan.sadhasivam@linaro.org,
 linux-riscv@lists.infradead.org, kys@microsoft.com, robert.jarzmik@free.fr,
 haijie1@huawei.com, linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-usb@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, brucechang@via.com.tw,
 keescook@chromium.org, oakad@yahoo.com, sven@svenpeter.dev, rjui@broadcom.com,
 s.hauer@pengutronix.de, sean.wang@mediatek.com,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 haojian.zhuang@gmail.com, mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 sbranden@broadcom.com, logang@deltatee.com, andersson@kernel.org,
 marcan@marcan.st, haiyangz@microsoft.com, linux-mips@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 27.03.24 17:03, Allen Pais wrote:
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
> 
> This patch converts drivers/infiniband/* from tasklet to BH workqueue.
> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> 
> Note: Not tested. Please test/review.
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  drivers/s390/block/dasd.c              | 42 ++++++++++++------------
>  drivers/s390/block/dasd_int.h          | 10 +++---
>  drivers/s390/char/con3270.c            | 27 ++++++++--------
>  drivers/s390/crypto/ap_bus.c           | 24 +++++++-------
>  drivers/s390/crypto/ap_bus.h           |  2 +-
>  drivers/s390/crypto/zcrypt_msgtype50.c |  2 +-
>  drivers/s390/crypto/zcrypt_msgtype6.c  |  4 +--
>  drivers/s390/net/ctcm_fsms.c           |  4 +--
>  drivers/s390/net/ctcm_main.c           | 15 ++++-----
>  drivers/s390/net/ctcm_main.h           |  5 +--
>  drivers/s390/net/ctcm_mpc.c            | 12 +++----
>  drivers/s390/net/ctcm_mpc.h            |  7 ++--
>  drivers/s390/net/lcs.c                 | 26 +++++++--------
>  drivers/s390/net/lcs.h                 |  2 +-
>  drivers/s390/net/qeth_core_main.c      |  2 +-
>  drivers/s390/scsi/zfcp_qdio.c          | 45 +++++++++++++-------------
>  drivers/s390/scsi/zfcp_qdio.h          |  9 +++---
>  17 files changed, 117 insertions(+), 121 deletions(-)
> 


We're looking into the best way to test this. 

For drivers/s390/net/ctcm* and drivers/s390/net/lcs*:
Acked-by: Alexandra Winter <wintera@linux.ibm.com>


[...]
> diff --git a/drivers/s390/net/qeth_core_main.c b/drivers/s390/net/qeth_core_main.c
> index a0cce6872075..10ea95abc753 100644
> --- a/drivers/s390/net/qeth_core_main.c
> +++ b/drivers/s390/net/qeth_core_main.c
> @@ -2911,7 +2911,7 @@ static int qeth_init_input_buffer(struct qeth_card *card,
>  	}
>  
>  	/*
> -	 * since the buffer is accessed only from the input_tasklet
> +	 * since the buffer is accessed only from the input_work
>  	 * there shouldn't be a need to synchronize; also, since we use
>  	 * the QETH_IN_BUF_REQUEUE_THRESHOLD we should never run  out off
>  	 * buffers

I propose to delete the whole comment block. There have been many changes and 
I don't think it is helpful for the current qeth driver.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7620388EBBC
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 17:56:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpWZ8-0005RM-2B;
	Wed, 27 Mar 2024 16:55:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1rpWZ6-0005RE-OG
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bjjb3drcv3Ayv3J8QY9Y1C9tZ2hSe2Ve9q5qRtyoa/s=; b=RteKzPmEevd8WnKAy9BRX1nG0o
 ynAk8cl8MCbVTc1phdfagHtreSr96l3MbKkriQ47Y+y7WW240y+bRAQRqZhtiwUVw00Uz2gD5lCII
 76NpIPZ+yljt58HwLnBiqlGESgYfDZyZ/4ReZsblH3hJEq12+iHzmmWqrmRMuwGJ0Qwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bjjb3drcv3Ayv3J8QY9Y1C9tZ2hSe2Ve9q5qRtyoa/s=; b=lQFFZKinpwVzE0VJ/Tqrf0Z0Na
 zyNwQw5iVPbdHxGnY5eiB0vxgEzmSKAa5w4Vc1LBVcU5QOCZTpFaKG1oONUx3kNpN0KCr1fxID7QM
 DLihemvDGD6GNo7cvuuErM7zu5oSwDAshKxodVBDvmd/Kenn4eh+zKOMcXH7w5z3wRG8=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpWZ2-0007WA-Gb for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:55:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 72A43CE2707;
 Wed, 27 Mar 2024 16:55:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ABDBC433C7;
 Wed, 27 Mar 2024 16:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1711558535;
 bh=vpDkfUBtWL+UxBwjuUm5gYeL/cEacWfXEPKG81vcE0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O9UtOMh9NhK8uq0mZiMXt2LKgdT1qaV4eqkqQ4OpNjzEIBfNH8AxnSa5LKMbuNnuj
 139SwlhRdsUzFtHFa7nm692D1Q6Maoi8Dc8aCzxaDG36oyEKDDYttLwvcqzFnSbA0P
 DJD28wQMsDmrT4Kh7AowzV2l5JSL5uf6ZAH6m6jc=
Date: Wed, 27 Mar 2024 17:55:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Allen Pais <apais@linux.microsoft.com>
Message-ID: <2024032753-probable-blatancy-80bf@gregkh>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-5-apais@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327160314.9982-5-apais@linux.microsoft.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 27, 2024 at 04:03:09PM +0000, Allen Pais wrote:
 > The only generic interface to execute asynchronously in the BH context
 is > tasklet; however, it's marked deprecated and has some design f [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rpWZ2-0007WA-Gb
Subject: Re: [Openipmi-developer] [PATCH 4/9] USB: Convert from tasklet to
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, HaraldWelte@viatech.com, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
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
 marcan@marcan.st, haiyangz@microsoft.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 27, 2024 at 04:03:09PM +0000, Allen Pais wrote:
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
> 
> This patch converts drivers/infiniband/* from tasklet to BH workqueue.

No it does not, I think your changelog is wrong :(

> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  drivers/usb/atm/usbatm.c            | 55 +++++++++++++++--------------
>  drivers/usb/atm/usbatm.h            |  3 +-
>  drivers/usb/core/hcd.c              | 22 ++++++------
>  drivers/usb/gadget/udc/fsl_qe_udc.c | 21 +++++------
>  drivers/usb/gadget/udc/fsl_qe_udc.h |  4 +--
>  drivers/usb/host/ehci-sched.c       |  2 +-
>  drivers/usb/host/fhci-hcd.c         |  3 +-
>  drivers/usb/host/fhci-sched.c       | 10 +++---
>  drivers/usb/host/fhci.h             |  5 +--
>  drivers/usb/host/xhci-dbgcap.h      |  3 +-
>  drivers/usb/host/xhci-dbgtty.c      | 15 ++++----
>  include/linux/usb/cdc_ncm.h         |  2 +-
>  include/linux/usb/usbnet.h          |  2 +-
>  13 files changed, 76 insertions(+), 71 deletions(-)
> 
> diff --git a/drivers/usb/atm/usbatm.c b/drivers/usb/atm/usbatm.c
> index 2da6615fbb6f..74849f24e52e 100644
> --- a/drivers/usb/atm/usbatm.c
> +++ b/drivers/usb/atm/usbatm.c
> @@ -17,7 +17,7 @@
>   *  		- Removed the limit on the number of devices
>   *  		- Module now autoloads on device plugin
>   *  		- Merged relevant parts of sarlib
> - *  		- Replaced the kernel thread with a tasklet
> + *  		- Replaced the kernel thread with a work

a "work"?

>   *  		- New packet transmission code
>   *  		- Changed proc file contents
>   *  		- Fixed all known SMP races
> @@ -68,6 +68,7 @@
>  #include <linux/wait.h>
>  #include <linux/kthread.h>
>  #include <linux/ratelimit.h>
> +#include <linux/workqueue.h>
>  
>  #ifdef VERBOSE_DEBUG
>  static int usbatm_print_packet(struct usbatm_data *instance, const unsigned char *data, int len);
> @@ -249,7 +250,7 @@ static void usbatm_complete(struct urb *urb)
>  	/* vdbg("%s: urb 0x%p, status %d, actual_length %d",
>  	     __func__, urb, status, urb->actual_length); */
>  
> -	/* Can be invoked from task context, protect against interrupts */
> +	/* Can be invoked from work context, protect against interrupts */

"workqueue"?  This too seems wrong.

Same for other comment changes in this patch.

thanks,

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

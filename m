Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6673C88F78F
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 06:56:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpik5-0007X6-CU;
	Thu, 28 Mar 2024 05:56:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vkoul@kernel.org>) id 1rpik4-0007Ws-OB
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 05:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gne0HV3Jz0fVuEZ1BjGvShampv22Q1HcgC9Vd49YqHI=; b=LSO19zwtBzzPGGwmJoJ7Q7cmJO
 ANLnNJ6xNVQIc4+uydiAN+WWmVwThkAbQrgdFqSPR96A9L6jJ9qN2eaY2eHPZFhvHc9MnL5jQsUkM
 Nm3mShr3vXbiNmdU2XssqJ9O/ly+PAPTBAz8YVq2FNAufqDh+vQ9X5pVCdAr/iPistVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gne0HV3Jz0fVuEZ1BjGvShampv22Q1HcgC9Vd49YqHI=; b=G9ncCeRP9TxhvPOnAfoq+mf1I1
 OQWDVPLxIbfHklZuu76lvvKsa7nqW3JMv33ZwmTPtobaTzNvgdQHMV+WGUSqv1URxDG3HWYwbqdMo
 1ZzBuJeFWLZcAGvY/1Oe9CqgOqgNRtiPjdlSWa+X1LdDK0ZlcpiNJ1Cqyops10/mLolU=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpik2-0002C8-QS for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 05:56:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id DB667CE2942;
 Thu, 28 Mar 2024 05:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55E6DC433F1;
 Thu, 28 Mar 2024 05:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711605346;
 bh=C6skgkr2NMPDni3brGoFkl+5/I4LRqRBMa9zmdDL9uY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hysjLZhkEnvXnxd+HtHwjnxShxKJsdr7YRORWMMbG9CAv2Wo4v/3W17f+9SmlwjYP
 AyxLZuXRv9YJGW7TBEhuFvjqai5JqAqlAjT7kP1ISp5EH8RS9fJ2YPnuq82HTriscX
 k3oc9NY2bXpiP0jGnfR7dbOxiqpXyBbLE3Kr+zaoP4w8AQS+EkbA1t2gSCobYQ2KlV
 32f78em/AA4bHgFdo/ljQvmpapnRbgSvmNw6bLqNSxN3FzIz/Su4hMEut3jzJjbgI6
 ErlOb5+1jhqeBVqohmzPhEaaC6pQ2kHQXfpk3998EVOS2mUbOgGjtxbSO/uM8abY2C
 N/IIGvRGfpoEA==
Date: Thu, 28 Mar 2024 11:25:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Allen Pais <apais@linux.microsoft.com>
Message-ID: <ZgUGXTKPVhrA1tam@matsya>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327160314.9982-3-apais@linux.microsoft.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Allen, Subsytem is dmaengine,
 can you rename this to dmaengine:
 ... On 27-03-24, 16:03, Allen Pais wrote: > The only generic interface to
 execute asynchronously in the BH context is > tasklet; however, it's marked
 deprecated and has some design flaws. To > replace tas [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rpik2-0002C8-QS
Subject: Re: [Openipmi-developer] [PATCH 2/9] dma: Convert from tasklet to
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
 linux-mips@vger.kernel.org, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, maintainers@bluecherrydvr.com,
 peter.ujfalusi@gmail.com, manivannan.sadhasivam@linaro.org,
 linux-riscv@lists.infradead.org, kys@microsoft.com, robert.jarzmik@free.fr,
 haijie1@huawei.com, linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, HaraldWelte@viatech.com, jernej.skrabec@gmail.com,
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
 marcan@marcan.st, haiyangz@microsoft.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 wangzhou1@hisilicon.com, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Allen,

Subsytem is dmaengine, can you rename this to dmaengine: ...

On 27-03-24, 16:03, Allen Pais wrote:
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.

Thanks for conversion, am happy with BH alternative as it helps in
dmaengine where we need shortest possible time between tasklet and
interrupt handling to maximize dma performance

> 
> This patch converts drivers/dma/* from tasklet to BH workqueue.

> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: git://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  drivers/dma/altera-msgdma.c                   | 15 ++++----
>  drivers/dma/apple-admac.c                     | 15 ++++----
>  drivers/dma/at_hdmac.c                        |  2 +-
>  drivers/dma/at_xdmac.c                        | 15 ++++----
>  drivers/dma/bcm2835-dma.c                     |  2 +-
>  drivers/dma/dma-axi-dmac.c                    |  2 +-
>  drivers/dma/dma-jz4780.c                      |  2 +-
>  .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    |  2 +-
>  drivers/dma/dw-edma/dw-edma-core.c            |  2 +-
>  drivers/dma/dw/core.c                         | 13 +++----
>  drivers/dma/dw/regs.h                         |  3 +-
>  drivers/dma/ep93xx_dma.c                      | 15 ++++----
>  drivers/dma/fsl-edma-common.c                 |  2 +-
>  drivers/dma/fsl-qdma.c                        |  2 +-
>  drivers/dma/fsl_raid.c                        | 11 +++---
>  drivers/dma/fsl_raid.h                        |  2 +-
>  drivers/dma/fsldma.c                          | 15 ++++----
>  drivers/dma/fsldma.h                          |  3 +-
>  drivers/dma/hisi_dma.c                        |  2 +-
>  drivers/dma/hsu/hsu.c                         |  2 +-
>  drivers/dma/idma64.c                          |  4 +--
>  drivers/dma/img-mdc-dma.c                     |  2 +-
>  drivers/dma/imx-dma.c                         | 27 +++++++-------
>  drivers/dma/imx-sdma.c                        |  6 ++--
>  drivers/dma/ioat/dma.c                        | 17 ++++-----
>  drivers/dma/ioat/dma.h                        |  5 +--
>  drivers/dma/ioat/init.c                       |  2 +-
>  drivers/dma/k3dma.c                           | 19 +++++-----
>  drivers/dma/mediatek/mtk-cqdma.c              | 35 ++++++++++---------
>  drivers/dma/mediatek/mtk-hsdma.c              |  2 +-
>  drivers/dma/mediatek/mtk-uart-apdma.c         |  4 +--
>  drivers/dma/mmp_pdma.c                        | 13 +++----
>  drivers/dma/mmp_tdma.c                        | 11 +++---
>  drivers/dma/mpc512x_dma.c                     | 17 ++++-----
>  drivers/dma/mv_xor.c                          | 13 +++----
>  drivers/dma/mv_xor.h                          |  5 +--
>  drivers/dma/mv_xor_v2.c                       | 23 ++++++------
>  drivers/dma/mxs-dma.c                         | 13 +++----
>  drivers/dma/nbpfaxi.c                         | 15 ++++----
>  drivers/dma/owl-dma.c                         |  2 +-
>  drivers/dma/pch_dma.c                         | 17 ++++-----
>  drivers/dma/pl330.c                           | 31 ++++++++--------
>  drivers/dma/plx_dma.c                         | 13 +++----
>  drivers/dma/ppc4xx/adma.c                     | 17 ++++-----
>  drivers/dma/ppc4xx/adma.h                     |  5 +--
>  drivers/dma/pxa_dma.c                         |  2 +-
>  drivers/dma/qcom/bam_dma.c                    | 35 ++++++++++---------
>  drivers/dma/qcom/gpi.c                        | 18 +++++-----
>  drivers/dma/qcom/hidma.c                      | 11 +++---
>  drivers/dma/qcom/hidma.h                      |  5 +--
>  drivers/dma/qcom/hidma_ll.c                   | 11 +++---
>  drivers/dma/qcom/qcom_adm.c                   |  2 +-
>  drivers/dma/sa11x0-dma.c                      | 27 +++++++-------
>  drivers/dma/sf-pdma/sf-pdma.c                 | 23 ++++++------
>  drivers/dma/sf-pdma/sf-pdma.h                 |  5 +--
>  drivers/dma/sprd-dma.c                        |  2 +-
>  drivers/dma/st_fdma.c                         |  2 +-
>  drivers/dma/ste_dma40.c                       | 17 ++++-----
>  drivers/dma/sun6i-dma.c                       | 33 ++++++++---------
>  drivers/dma/tegra186-gpc-dma.c                |  2 +-
>  drivers/dma/tegra20-apb-dma.c                 | 19 +++++-----
>  drivers/dma/tegra210-adma.c                   |  2 +-
>  drivers/dma/ti/edma.c                         |  2 +-
>  drivers/dma/ti/k3-udma.c                      | 11 +++---
>  drivers/dma/ti/omap-dma.c                     |  2 +-
>  drivers/dma/timb_dma.c                        | 23 ++++++------
>  drivers/dma/txx9dmac.c                        | 29 +++++++--------
>  drivers/dma/txx9dmac.h                        |  5 +--
>  drivers/dma/virt-dma.c                        |  9 ++---
>  drivers/dma/virt-dma.h                        |  9 ++---
>  drivers/dma/xgene-dma.c                       | 21 +++++------
>  drivers/dma/xilinx/xilinx_dma.c               | 23 ++++++------
>  drivers/dma/xilinx/xilinx_dpdma.c             | 21 +++++------
>  drivers/dma/xilinx/zynqmp_dma.c               | 21 +++++------
>  74 files changed, 442 insertions(+), 395 deletions(-)
> 
> diff --git a/drivers/dma/altera-msgdma.c b/drivers/dma/altera-msgdma.c
> index a8e3615235b8..611b5290324b 100644
> --- a/drivers/dma/altera-msgdma.c
> +++ b/drivers/dma/altera-msgdma.c
> @@ -20,6 +20,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>  #include <linux/of_dma.h>
> +#include <linux/workqueue.h>
>  
>  #include "dmaengine.h"
>  
> @@ -170,7 +171,7 @@ struct msgdma_sw_desc {
>  struct msgdma_device {
>  	spinlock_t lock;
>  	struct device *dev;
> -	struct tasklet_struct irq_tasklet;
> +	struct work_struct irq_work;

Can we name these as bh_work to signify that we are always in bh
context? here and everywhere please


>  	struct list_head pending_list;
>  	struct list_head free_list;
>  	struct list_head active_list;
> @@ -676,12 +677,12 @@ static int msgdma_alloc_chan_resources(struct dma_chan *dchan)
>  }
>  
>  /**
> - * msgdma_tasklet - Schedule completion tasklet
> + * msgdma_work - Schedule completion work

...

> @@ -515,7 +516,7 @@ struct gpii {
>  	enum gpi_pm_state pm_state;
>  	rwlock_t pm_lock;
>  	struct gpi_ring ev_ring;
> -	struct tasklet_struct ev_task; /* event processing tasklet */
> +	struct work_struct ev_task; /* event processing work */
>  	struct completion cmd_completion;
>  	enum gpi_cmd gpi_cmd;
>  	u32 cntxt_type_irq_msk;
> @@ -755,7 +756,7 @@ static void gpi_process_ieob(struct gpii *gpii)
>  	gpi_write_reg(gpii, gpii->ieob_clr_reg, BIT(0));
>  
>  	gpi_config_interrupts(gpii, MASK_IEOB_SETTINGS, 0);
> -	tasklet_hi_schedule(&gpii->ev_task);
> +	queue_work(system_bh_highpri_wq, &gpii->ev_task);

This is good conversion, thanks for ensuring system_bh_highpri_wq is
used here
-- 
~Vinod


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

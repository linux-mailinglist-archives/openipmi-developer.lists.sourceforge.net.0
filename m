Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C921189078C
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 18:50:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpttD-0007dZ-37;
	Thu, 28 Mar 2024 17:50:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rpttB-0007dH-7E
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hWHCqghfJDvViQtrnjDyRBjptIr10JmWbLdcHeOE900=; b=md2mJkBAZou+mJu+Vm2mVjKiXV
 PXTrmAjqtfm/p0WcJJWiLiUBAy34M8yUnos1zgJF5axEDOrwK0aJs22LZucw2xCT8Ml27GTWlCDW0
 WJSr5qEb/5k9/XGPltBAv3hScnUP64mpi4UOckplljTNrSm8S9hDIDsXI05XqNzC/1B4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hWHCqghfJDvViQtrnjDyRBjptIr10JmWbLdcHeOE900=; b=NpJ0LiF9epMIYY25KtHbfOQPvd
 60v1aEZJcBjj8hUdYY+YqrPM9Yx8Ue37w9VE1nlfiUGr/TWLcOMy2A1h+8bAwS9ocg6Dj3ibK94VL
 Xz7rPb7ai8fQYn5hcTMERWOPDzNPa9ywI8idWNM1E/NmdZwlNFtvi+clmTpF7l2BUrwo=;
Received: from mail-vs1-f46.google.com ([209.85.217.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rptt9-0006WS-Qy for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:50:09 +0000
Received: by mail-vs1-f46.google.com with SMTP id
 ada2fe7eead31-4783dca2b17so485538137.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 10:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711648202; x=1712253002; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=hWHCqghfJDvViQtrnjDyRBjptIr10JmWbLdcHeOE900=;
 b=QP+3k64EJxwymrCFVJk3US5qTrFfNCqxtW6FfRjefDcFuMyb/eZVVJ/mMb+ObhHajH
 Eg/YHUEOfqQdOhi4CUHrIeOauR8AwyUqA/++uhKsy8Ski8VSuVRjhjL9FqHv4cV7Ydll
 4L7hQOI7kP4hQF2/zYTcBW4FaVN0/VYxAdMGKYkzsrMbmJfOTeDjMtTBc4PUSbqylsR5
 VUBKs5p/5TVUc8j0cpSIkuHnQlrhrSU0aPAdxpVAZwzusIIvLODhHMHEoH82xSRTVIak
 HtxrvJ0f2sh6XGL1t5n/9W6EJunHcVLMInP4rW7w94qpgbvv2csTsiAyGOp7kM9KZVEs
 62CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711648202; x=1712253002;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hWHCqghfJDvViQtrnjDyRBjptIr10JmWbLdcHeOE900=;
 b=qmU2+NLf/EUCBE/BdpUTjZuxcxqatgEZ6cRhHQPrB6W5YG3JfbTq9PntBUGDsQR5rI
 1XynU4VxCXeFRc+yf4x1ENcZ3kRmEdTG3dby3chh3inXLGOUEB4eTW78Nu8dMvu4mr2y
 xXMLEqI8HmYXkeT0fVR9r8R+FDVo11pmBQ+B12fvvX5SdSfth5ZARvvbO9RSWFElOY2Z
 yMvt+Bu6MMQppPX9iOn3LvM2VtD7ZbPH4Gn/Syvmfg5koNR0vC+9k5uENbjrGsN7q28M
 SAfu0VrkJGyLQdemzXs79vtUjJ4avH3AUCknQSHUvlHTNRw6ToHg/HJvaQ2Tcmu7FN8q
 P/zg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVygw5r9+j6PBDATLNw94wchV2DW5pc82lz/U4tlSZzoRk5g6Uh3LqhOi8QPJsOrhxVkvlsQ/ZjgZmckUAt5X1ThQF//IV+iS2T6DlYWr0MiJMa4zDhn1Xq
X-Gm-Message-State: AOJu0Yx7b7L+sP+HgfumQ3Nhr1kBfUboxI68vi16/CWXySmeAPSnlVMu
 YFwu5HIjsKgpTd6VSdldBONJX6J1M0I5FzB0VoeeI2cM2NdCrMuHd1GPVFe+pQx5huawuYReTmY
 Kvq3LYyVX52VLrRZr8roGAea86t8=
X-Google-Smtp-Source: AGHT+IG9ir7Qv5o8Rj+SB4p+I2Iv/yEJXMt0i85p6DOUBIUWCoVLWKyvCgsi6TT17MsYpR3xksNQ2srolzx+ehJ8uf4=
X-Received: by 2002:a05:6102:5e1:b0:478:2339:cef6 with SMTP id
 w1-20020a05610205e100b004782339cef6mr3607473vsf.5.1711648202174; Thu, 28 Mar
 2024 10:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com> <ZgUGXTKPVhrA1tam@matsya>
In-Reply-To: <ZgUGXTKPVhrA1tam@matsya>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 10:49:51 -0700
Message-ID: <CAOMdWSJxDAFKLVbH7wrB16m2nNXHm0b45dCRhvitVCP1Wf1aEg@mail.gmail.com>
To: Vinod Koul <vkoul@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > > Subsytem is dmaengine, can you rename this to dmaengine:
 ... My apologies, will have it fixed in v2. > > On 27-03-24, 16:03, Allen
 Pais wrote: > > The only generic interface to execute asynchronously in the
 BH context is > > tasklet; however, it's marked deprecated and has some design
 flaws. To > > r [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rptt9-0006WS-Qy
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
 Allen Pais <apais@linux.microsoft.com>, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, sbranden@broadcom.com,
 logang@deltatee.com, andersson@kernel.org, marcan@marcan.st,
 haiyangz@microsoft.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, wangzhou1@hisilicon.com,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

>
> Subsytem is dmaengine, can you rename this to dmaengine: ...

 My apologies, will have it fixed in v2.

>
> On 27-03-24, 16:03, Allen Pais wrote:
> > The only generic interface to execute asynchronously in the BH context is
> > tasklet; however, it's marked deprecated and has some design flaws. To
> > replace tasklets, BH workqueue support was recently added. A BH workqueue
> > behaves similarly to regular workqueues except that the queued work items
> > are executed in the BH context.
>
> Thanks for conversion, am happy with BH alternative as it helps in
> dmaengine where we need shortest possible time between tasklet and
> interrupt handling to maximize dma performance
>
> >
> > This patch converts drivers/dma/* from tasklet to BH workqueue.
>
> >
> > Based on the work done by Tejun Heo <tj@kernel.org>
> > Branch: git://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> >
> > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> > ---
> >  drivers/dma/altera-msgdma.c                   | 15 ++++----
> >  drivers/dma/apple-admac.c                     | 15 ++++----
> >  drivers/dma/at_hdmac.c                        |  2 +-
> >  drivers/dma/at_xdmac.c                        | 15 ++++----
> >  drivers/dma/bcm2835-dma.c                     |  2 +-
> >  drivers/dma/dma-axi-dmac.c                    |  2 +-
> >  drivers/dma/dma-jz4780.c                      |  2 +-
> >  .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    |  2 +-
> >  drivers/dma/dw-edma/dw-edma-core.c            |  2 +-
> >  drivers/dma/dw/core.c                         | 13 +++----
> >  drivers/dma/dw/regs.h                         |  3 +-
> >  drivers/dma/ep93xx_dma.c                      | 15 ++++----
> >  drivers/dma/fsl-edma-common.c                 |  2 +-
> >  drivers/dma/fsl-qdma.c                        |  2 +-
> >  drivers/dma/fsl_raid.c                        | 11 +++---
> >  drivers/dma/fsl_raid.h                        |  2 +-
> >  drivers/dma/fsldma.c                          | 15 ++++----
> >  drivers/dma/fsldma.h                          |  3 +-
> >  drivers/dma/hisi_dma.c                        |  2 +-
> >  drivers/dma/hsu/hsu.c                         |  2 +-
> >  drivers/dma/idma64.c                          |  4 +--
> >  drivers/dma/img-mdc-dma.c                     |  2 +-
> >  drivers/dma/imx-dma.c                         | 27 +++++++-------
> >  drivers/dma/imx-sdma.c                        |  6 ++--
> >  drivers/dma/ioat/dma.c                        | 17 ++++-----
> >  drivers/dma/ioat/dma.h                        |  5 +--
> >  drivers/dma/ioat/init.c                       |  2 +-
> >  drivers/dma/k3dma.c                           | 19 +++++-----
> >  drivers/dma/mediatek/mtk-cqdma.c              | 35 ++++++++++---------
> >  drivers/dma/mediatek/mtk-hsdma.c              |  2 +-
> >  drivers/dma/mediatek/mtk-uart-apdma.c         |  4 +--
> >  drivers/dma/mmp_pdma.c                        | 13 +++----
> >  drivers/dma/mmp_tdma.c                        | 11 +++---
> >  drivers/dma/mpc512x_dma.c                     | 17 ++++-----
> >  drivers/dma/mv_xor.c                          | 13 +++----
> >  drivers/dma/mv_xor.h                          |  5 +--
> >  drivers/dma/mv_xor_v2.c                       | 23 ++++++------
> >  drivers/dma/mxs-dma.c                         | 13 +++----
> >  drivers/dma/nbpfaxi.c                         | 15 ++++----
> >  drivers/dma/owl-dma.c                         |  2 +-
> >  drivers/dma/pch_dma.c                         | 17 ++++-----
> >  drivers/dma/pl330.c                           | 31 ++++++++--------
> >  drivers/dma/plx_dma.c                         | 13 +++----
> >  drivers/dma/ppc4xx/adma.c                     | 17 ++++-----
> >  drivers/dma/ppc4xx/adma.h                     |  5 +--
> >  drivers/dma/pxa_dma.c                         |  2 +-
> >  drivers/dma/qcom/bam_dma.c                    | 35 ++++++++++---------
> >  drivers/dma/qcom/gpi.c                        | 18 +++++-----
> >  drivers/dma/qcom/hidma.c                      | 11 +++---
> >  drivers/dma/qcom/hidma.h                      |  5 +--
> >  drivers/dma/qcom/hidma_ll.c                   | 11 +++---
> >  drivers/dma/qcom/qcom_adm.c                   |  2 +-
> >  drivers/dma/sa11x0-dma.c                      | 27 +++++++-------
> >  drivers/dma/sf-pdma/sf-pdma.c                 | 23 ++++++------
> >  drivers/dma/sf-pdma/sf-pdma.h                 |  5 +--
> >  drivers/dma/sprd-dma.c                        |  2 +-
> >  drivers/dma/st_fdma.c                         |  2 +-
> >  drivers/dma/ste_dma40.c                       | 17 ++++-----
> >  drivers/dma/sun6i-dma.c                       | 33 ++++++++---------
> >  drivers/dma/tegra186-gpc-dma.c                |  2 +-
> >  drivers/dma/tegra20-apb-dma.c                 | 19 +++++-----
> >  drivers/dma/tegra210-adma.c                   |  2 +-
> >  drivers/dma/ti/edma.c                         |  2 +-
> >  drivers/dma/ti/k3-udma.c                      | 11 +++---
> >  drivers/dma/ti/omap-dma.c                     |  2 +-
> >  drivers/dma/timb_dma.c                        | 23 ++++++------
> >  drivers/dma/txx9dmac.c                        | 29 +++++++--------
> >  drivers/dma/txx9dmac.h                        |  5 +--
> >  drivers/dma/virt-dma.c                        |  9 ++---
> >  drivers/dma/virt-dma.h                        |  9 ++---
> >  drivers/dma/xgene-dma.c                       | 21 +++++------
> >  drivers/dma/xilinx/xilinx_dma.c               | 23 ++++++------
> >  drivers/dma/xilinx/xilinx_dpdma.c             | 21 +++++------
> >  drivers/dma/xilinx/zynqmp_dma.c               | 21 +++++------
> >  74 files changed, 442 insertions(+), 395 deletions(-)
> >
> > diff --git a/drivers/dma/altera-msgdma.c b/drivers/dma/altera-msgdma.c
> > index a8e3615235b8..611b5290324b 100644
> > --- a/drivers/dma/altera-msgdma.c
> > +++ b/drivers/dma/altera-msgdma.c
> > @@ -20,6 +20,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >  #include <linux/of_dma.h>
> > +#include <linux/workqueue.h>
> >
> >  #include "dmaengine.h"
> >
> > @@ -170,7 +171,7 @@ struct msgdma_sw_desc {
> >  struct msgdma_device {
> >       spinlock_t lock;
> >       struct device *dev;
> > -     struct tasklet_struct irq_tasklet;
> > +     struct work_struct irq_work;
>
> Can we name these as bh_work to signify that we are always in bh
> context? here and everywhere please

 Sure, will address it in v2.
>
>
> >       struct list_head pending_list;
> >       struct list_head free_list;
> >       struct list_head active_list;
> > @@ -676,12 +677,12 @@ static int msgdma_alloc_chan_resources(struct dma_chan *dchan)
> >  }
> >
> >  /**
> > - * msgdma_tasklet - Schedule completion tasklet
> > + * msgdma_work - Schedule completion work
>
> ..
>
> > @@ -515,7 +516,7 @@ struct gpii {
> >       enum gpi_pm_state pm_state;
> >       rwlock_t pm_lock;
> >       struct gpi_ring ev_ring;
> > -     struct tasklet_struct ev_task; /* event processing tasklet */
> > +     struct work_struct ev_task; /* event processing work */
> >       struct completion cmd_completion;
> >       enum gpi_cmd gpi_cmd;
> >       u32 cntxt_type_irq_msk;
> > @@ -755,7 +756,7 @@ static void gpi_process_ieob(struct gpii *gpii)
> >       gpi_write_reg(gpii, gpii->ieob_clr_reg, BIT(0));
> >
> >       gpi_config_interrupts(gpii, MASK_IEOB_SETTINGS, 0);
> > -     tasklet_hi_schedule(&gpii->ev_task);
> > +     queue_work(system_bh_highpri_wq, &gpii->ev_task);
>
> This is good conversion, thanks for ensuring system_bh_highpri_wq is
> used here

 Thank you very much for the review, will have v2 sent soon.

- Allen

> --
> ~Vinod
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

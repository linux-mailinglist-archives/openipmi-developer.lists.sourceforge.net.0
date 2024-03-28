Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E05C8907B6
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 18:54:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rptxQ-0000uk-Ty;
	Thu, 28 Mar 2024 17:54:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rptxO-0000ud-BB
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nG7pFQ9K9R/mz80FNkdLLBY0bbfjalJJC6HLc51WLAE=; b=cvyus7niirGY2SuhTNg2FXU2u6
 BEk+Dw0fVzj4LZzt5eGsEJa6rMXqRhaedit4HRAo+bM/Xk7vRHDOmULYd+t9tItDbx9qeQtlnpjGy
 M0VsApveHwxDwtF124U0mk3t2hQgyh/yIk4eDfA9XXzRHUKXdUkg0u7HrdoBjMw+TDfA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nG7pFQ9K9R/mz80FNkdLLBY0bbfjalJJC6HLc51WLAE=; b=Z1sJ0YJqfvmeLDJhFFP+swtM4r
 7FLkcPZZ3CYOyaa/je9pbQ5YFfLGIZr1JL6ru9hDzmWy20RNCdsG8WJDN4cIP9SUtGVl+I4SIxAB8
 foTWO0tqzJLAEhpxQwrPgPx5q21H5/hQIvs2GMbKq89yyCnfqTzyBM/HIg1biYQl9o1s=;
Received: from mail-vs1-f42.google.com ([209.85.217.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rptxN-0006mW-9A for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:54:30 +0000
Received: by mail-vs1-f42.google.com with SMTP id
 ada2fe7eead31-4783dca2b17so486939137.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 10:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711648458; x=1712253258; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nG7pFQ9K9R/mz80FNkdLLBY0bbfjalJJC6HLc51WLAE=;
 b=U0uVezUV+vfAQpUXthmqr4+pthGN3rxAIOuhB9xhjQ0uzYTy2bWZCgldIncS41QSvd
 dd1eXCYzdGjj+72JRBRP0molYX9gS5u834o/7g3ptgt0ZsE8459CX4u/NEc5n6EGcba4
 hS7X5L8SAoNJ5O3OK2JzoOobRTs4U1M4meP0wJPQe44Mnhc2JVILOJ6eqrCCWHUQiGZZ
 UlNGgtCP9ktP3ZDDJ24mAyjIzv0TgHJcd3HwENgVuC4RgNy6v965nKIP0yYTDAVHYdx5
 gQFhe+DcY56iTG1vnVvpiu20zlpgMNejf8U4TcmR8P6Nbm6cigvEeu3laDEjQcTo017b
 Olkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711648458; x=1712253258;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nG7pFQ9K9R/mz80FNkdLLBY0bbfjalJJC6HLc51WLAE=;
 b=WBJAvNLbRo/wK8T+Smv4Nl4UVRNxLZnKE6a0ULHdKbAfAt7xVIYKUXtVDVs5L1USSx
 wmuuS+OTX8eK7/78px80B2n2POcy83vUjoJSrBNtQEqsx35bvbwbRpZs0lx0eqo5G2NQ
 MorBf5JhlJuuzpkS2pMXchuk2kTqdAdXWSwotdjAKzIfOwVZwBkpfKPno+kr5dM/PG/l
 J0WKeex+0SP1xsgxc4WQYfew5qCmSljkGHAn64kuxpPeiSDuE/AF5S9RYHg/ZyZdV/yj
 5yjU2nVYElKOGl3q+cqCrKcVp6qwcvW6asuJu3dIC7AICexAd/imh8kuLQvSdJbFuX8y
 1cHw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWupMK0d3QptlhHHTG+v/Yc9n6CLNzGAefqGT35ENZvRGSzNluxvHoTErpklvh+7PQ2/hBu/M1oGQw66vFaGG1eKeVvAKusJA1TU+SSEhsuOns3gjOQb+8j
X-Gm-Message-State: AOJu0Yzs11UB2oS05VQN/gdN2ir0qgjZa/fcGGX+9ajyS3JZMljMNfI4
 YUMZm2852HotEMZzGnVH/HLro6ho1hJfFmirYaXuk6LlffG3uuTopzGkVnbf6qK6fAlDy+SpzdX
 0kEroVz0Wf12PcZin0j8kh5uLUFY=
X-Google-Smtp-Source: AGHT+IGBQCwISe8ItG/2YCXarhKnEHlwL8nEFQuoDJ++KAY35MV4NPvZiqYz3quZfRGkQvsUcmc8+OZbNMhL2JCbvQY=
X-Received: by 2002:a67:b64d:0:b0:476:fc98:c73e with SMTP id
 e13-20020a67b64d000000b00476fc98c73emr4018043vsm.34.1711648458714; Thu, 28
 Mar 2024 10:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-5-apais@linux.microsoft.com>
 <42c445b4-a156-4c43-bf98-bd2a9ac7a4fa@rowland.harvard.edu>
In-Reply-To: <42c445b4-a156-4c43-bf98-bd2a9ac7a4fa@rowland.harvard.edu>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 10:54:07 -0700
Message-ID: <CAOMdWS+4T7rw577q9iW_oin8bbVF4m6Mpx-L2riqno5QX_L=WQ@mail.gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > > > This patch converts drivers/infiniband/* from tasklet
 to BH workqueue. > > > > Based on the work done by Tejun Heo > > Branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rptxN-0006mW-9A
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
 linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com, pierre@ossman.eu,
 linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
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
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> >
> > This patch converts drivers/infiniband/* from tasklet to BH workqueue.
> >
> > Based on the work done by Tejun Heo <tj@kernel.org>
> > Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> >
> > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> > ---
>
> > diff --git a/drivers/usb/core/hcd.c b/drivers/usb/core/hcd.c
> > index c0e005670d67..88d8e1c366cd 100644
> > --- a/drivers/usb/core/hcd.c
> > +++ b/drivers/usb/core/hcd.c
>
> > @@ -1662,10 +1663,9 @@ static void __usb_hcd_giveback_urb(struct urb *urb)
> >       usb_put_urb(urb);
> >  }
> >
> > -static void usb_giveback_urb_bh(struct work_struct *work)
> > +static void usb_giveback_urb_bh(struct work_struct *t)
> >  {
> > -     struct giveback_urb_bh *bh =
> > -             container_of(work, struct giveback_urb_bh, bh);
> > +     struct giveback_urb_bh *bh = from_work(bh, t, bh);
> >       struct list_head local_list;
> >
> >       spin_lock_irq(&bh->lock);
>
> Is there any reason for this apparently pointless change of a local
> variable's name?

 No, it was done just to keep things consistent across the kernel.
I can revert it back to *work if you'd prefer.

Thanks.

>
> Alan Stern
>


-- 
       - Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

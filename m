Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABD988EBD8
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 17:58:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpWbh-0000BG-Go;
	Wed, 27 Mar 2024 16:58:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rpWbf-0000B6-5W
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yUltN/NJxMhxZV1CH62BOvzy406AgQtlnwGFiPeOm1M=; b=j48sKRy1G3v6db/YBiJAWhsrPr
 O2rruADvDxt4dQpupJnK37E1PWF86G831ZzLw1XBzAZH/tgqUELu3lfxOJ9h3PbygY4XkXjmkiPZk
 JFNIuspbRtF5aFNyGzWrrTH7W9PrWRchaQ92lCLXNmtfA7RZjoXECDH+MJGGIV/kzgTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yUltN/NJxMhxZV1CH62BOvzy406AgQtlnwGFiPeOm1M=; b=KKDjefq9sNp8QegDy3CGMkMNW3
 a/zxm3UGkMMYsDyZpx+cbr6aBBiW9nmlpUpApepnXl/GcDCF2w9vBna5RGgX+sXXgRrNwioNCbktn
 3rVEhrvaECXMXcQt6xncCjFJEvEIZYHFKH3TQEjVBFPwkBXysaQI2oWpTSSNAYvcf5aY=;
Received: from mail-vs1-f53.google.com ([209.85.217.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpWbd-0007ic-Do for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:58:31 +0000
Received: by mail-vs1-f53.google.com with SMTP id
 ada2fe7eead31-47695273c19so2743166137.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 27 Mar 2024 09:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711558704; x=1712163504; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yUltN/NJxMhxZV1CH62BOvzy406AgQtlnwGFiPeOm1M=;
 b=BqerlxWRW5gCrrhpJvoIxc+3a/FNyD2cTv5CtF2JTpQAKr55KF5KthC68oo4+IU1n6
 uc5jtQWAw9GzkVbt/jarUrxQyz19NdBxzVo6TpSnWFuxiRr9XZd/USKCuBJ8E018Y3jI
 bJsRGpPz8BQeKNHi2IeVvZP2xcRAwooIkUQRaOVnvsxhtQVkA4ZL8168OFNRFmRqiQ6u
 meTUwG+AOF8QClXYKzN0dB7Ev8WUTt5o5syC71VVjFp1QNy5n20B+bvvbHhW32mJNvqO
 6OeDdtSunA3ciApp8SUkfgUQTWt+wtyY3NXm+JR4vp+YnqyBJX95nVG8Y2HjFzKQekRt
 eG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711558704; x=1712163504;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yUltN/NJxMhxZV1CH62BOvzy406AgQtlnwGFiPeOm1M=;
 b=XxpUhBbEXPuxHm8FAnQ7VcsUeDrHX/Er8zfnXQXfOMDyMZuk39H4Ouymxk/BXpcrD0
 3fvPkSSULgOuoNOzaoLbuy0wbJ08ayrLf4ZKPM7D1TzKBThlFOTVh4E+d1CYXVpAOmnu
 lfUaaJRkTJjUMgYl1bXV2QZZ2nMdrFZA7XcogfvGJqfOXkY9BofD33smtftbZM2hCGiu
 dvNK8h/JHRe03FjJ2LD5fZGRVDIox4gEZXQBaTjp1ZnoVo4/Wc0jn09JeK9CB6XNCAW4
 19TPcz+g0Yx9iPKt+xTbT4nsUIN541H+lplnvFxLhK0I6zzn0/u77cC/vOsx7Jrk0D0B
 ptBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXRxj4zjtCXEc+ntNbp1RwkpSpSRwqBbW0a0qeOJoxbn3++gGorDkClxXYnBDLlVZKfMq9/NLE7ywoIP+WPwQHig/Uy6/yF/ri9wzm4v0TC03w2xXV4xsVl
X-Gm-Message-State: AOJu0YybPVn0LLM2E7LubL6ij+ZjRiDsTrYXQaBDIet4cVjfTTBKsH5t
 yle02a/2dg1/I5p5GwBLYI2OK5Am7+wf6DQ7efcbBUKgggrSXmLMsP062qJneevjnANU9L7/yWu
 DrlBZa3VGZLMLq8KBRJPPidHpsLQ=
X-Google-Smtp-Source: AGHT+IG2+7fcvBBedZik6uQF+4M2q3ObjFc26qAotYqTJVzVn8pG6NuXX7LEd77qXX8Tn8MdeN0ijCK67x3Q8xGLlB4=
X-Received: by 2002:a05:6102:3b83:b0:472:64aa:403f with SMTP id
 z3-20020a0561023b8300b0047264aa403fmr602964vsu.26.1711558703814; Wed, 27 Mar
 2024 09:58:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-5-apais@linux.microsoft.com>
 <2024032753-probable-blatancy-80bf@gregkh>
In-Reply-To: <2024032753-probable-blatancy-80bf@gregkh>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 27 Mar 2024 09:58:12 -0700
Message-ID: <CAOMdWSLipPfm3OZTpjZz4uF4M+E_8QAoTeMcKBXawLnkTQx6Jg@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > The only generic interface to execute asynchronously in
 the BH context is > > tasklet; however, it's marked deprecated and has some
 design flaws. To > > replace tasklets, BH workqueue support was [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.53 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rpWbd-0007ic-Do
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

> > The only generic interface to execute asynchronously in the BH context is
> > tasklet; however, it's marked deprecated and has some design flaws. To
> > replace tasklets, BH workqueue support was recently added. A BH workqueue
> > behaves similarly to regular workqueues except that the queued work items
> > are executed in the BH context.
> >
> > This patch converts drivers/infiniband/* from tasklet to BH workqueue.
>
> No it does not, I think your changelog is wrong :(

Whoops, sorry about that. I messed up the commit messages. I will fix it in v2.
>
> >
> > Based on the work done by Tejun Heo <tj@kernel.org>
> > Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> >
> > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> > ---
> >  drivers/usb/atm/usbatm.c            | 55 +++++++++++++++--------------
> >  drivers/usb/atm/usbatm.h            |  3 +-
> >  drivers/usb/core/hcd.c              | 22 ++++++------
> >  drivers/usb/gadget/udc/fsl_qe_udc.c | 21 +++++------
> >  drivers/usb/gadget/udc/fsl_qe_udc.h |  4 +--
> >  drivers/usb/host/ehci-sched.c       |  2 +-
> >  drivers/usb/host/fhci-hcd.c         |  3 +-
> >  drivers/usb/host/fhci-sched.c       | 10 +++---
> >  drivers/usb/host/fhci.h             |  5 +--
> >  drivers/usb/host/xhci-dbgcap.h      |  3 +-
> >  drivers/usb/host/xhci-dbgtty.c      | 15 ++++----
> >  include/linux/usb/cdc_ncm.h         |  2 +-
> >  include/linux/usb/usbnet.h          |  2 +-
> >  13 files changed, 76 insertions(+), 71 deletions(-)
> >
> > diff --git a/drivers/usb/atm/usbatm.c b/drivers/usb/atm/usbatm.c
> > index 2da6615fbb6f..74849f24e52e 100644
> > --- a/drivers/usb/atm/usbatm.c
> > +++ b/drivers/usb/atm/usbatm.c
> > @@ -17,7 +17,7 @@
> >   *           - Removed the limit on the number of devices
> >   *           - Module now autoloads on device plugin
> >   *           - Merged relevant parts of sarlib
> > - *           - Replaced the kernel thread with a tasklet
> > + *           - Replaced the kernel thread with a work
>
> a "work"?
 will fix the comments.

>
> >   *           - New packet transmission code
> >   *           - Changed proc file contents
> >   *           - Fixed all known SMP races
> > @@ -68,6 +68,7 @@
> >  #include <linux/wait.h>
> >  #include <linux/kthread.h>
> >  #include <linux/ratelimit.h>
> > +#include <linux/workqueue.h>
> >
> >  #ifdef VERBOSE_DEBUG
> >  static int usbatm_print_packet(struct usbatm_data *instance, const unsigned char *data, int len);
> > @@ -249,7 +250,7 @@ static void usbatm_complete(struct urb *urb)
> >       /* vdbg("%s: urb 0x%p, status %d, actual_length %d",
> >            __func__, urb, status, urb->actual_length); */
> >
> > -     /* Can be invoked from task context, protect against interrupts */
> > +     /* Can be invoked from work context, protect against interrupts */
>
> "workqueue"?  This too seems wrong.
>
> Same for other comment changes in this patch.

Thanks for the quick review, I will fix the comments and send out v2.

- Alle

> thanks,
>
> greg k-h
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

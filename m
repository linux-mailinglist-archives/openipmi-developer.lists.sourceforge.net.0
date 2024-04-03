Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4304A89712C
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 15:33:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rs0kN-00048X-06;
	Wed, 03 Apr 2024 13:33:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rs0kL-00048N-Ox
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 13:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UfJ432sdibD0Lka67Qj4+39whrzSunQCkb9XAcwEVWQ=; b=cGtRDOCiRF3iGp1Xl97YFMQ6rv
 ciB30D+ZbpYeQjIlqBz66EeWeDMjLqQZGF2LcaSkXU+hyABE6RbfoYTA0XGWXaX89K/dFOmXsioDS
 iCNncFfz7ToT+s6Hv7ycvtOFNr5IEwx9Ggg91yFmfHJB3NpzwRgVfETUHqU7dPaFFJtc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UfJ432sdibD0Lka67Qj4+39whrzSunQCkb9XAcwEVWQ=; b=annBiUQg6svVyNBr6G6KQkHAQI
 CsxbT6LxpaWGcfRf7mpjpzMRu3N1BsKAsIsLTFdbBEbvBL5Cp1xxZDQM+hvZw4AqpEyR0eYBkwsGe
 84KpRVgMh2wx7UXWZFb0e7aswAwi2Z5dizs1Xjg4DSnmPEy0aqWaT7qiEeZUCxUieX6w=;
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rs0kL-0001gX-8e for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 13:33:46 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 006d021491bc7-5a4f608432bso3990219eaf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Apr 2024 06:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712151215; x=1712756015; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UfJ432sdibD0Lka67Qj4+39whrzSunQCkb9XAcwEVWQ=;
 b=HhLCqg8nrBsxQDmFhs+XbsaQZZwD+CeX2HmzAaG7DjPT8mJiBYBcKnrfrvffghKjXM
 OL0697f2qdbfCsBRuoMlR7YmShT8jm5qlzV7NVsanaGI/86xxyGRzNHteyHxqeI5yy7X
 4PneT2dClEZ87EdLAmDtMlP8T2WgArehU8tl1FqQA4wMH+rd/OYiEwiVhlG+fef/afzA
 RBgimSjsgyXgd/M0r7E/j8pO+N3nMEPfj+L8JwvHClmvfXdaZM1bvCQqBaHVA3gPLbm5
 c2D6lilUrIfFalnZhQucjilDcoOFihjHUvLjo6BHfKmUNf7+JhsCH7uYpvYT9OP89ReN
 3obA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712151215; x=1712756015;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UfJ432sdibD0Lka67Qj4+39whrzSunQCkb9XAcwEVWQ=;
 b=cBcTmk+l1yrUxTWjoS/3R6e8EraY2dEeR8BNx/pCKBkYTCSLp6D2pr3KiH8+VDCBvI
 idJba0U6c4XMtMRjqFKt5SiLkoOZKc7DbaO/r1LiTj/yMxpMPN5KQpF+UGrSIRBAA75i
 UVTIGr7yuIRoRHO5utVw/UecaS+w9ATzW+Laf6eJ3C3PoPaLfMdYGs8asvrEv6/zC/oq
 Sj4JrT+pMxRbZaLUrMrkIOG21XFtLZnGEpMjNTdE1IZlxC3tamTZZK/us6VWAKL1ke8s
 VjIfTF8X3BqehHmVE/u+Dg/QVRhp3Wz2lS1rvM9pbCnD++BD6XARArV8Xk3uIAduC4C/
 EzAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOrsIuaBR6LzldQqfdVIt9ORcdwWM77VR11BDZF0cQOmRvMP4wIKQ9ImJkQ31UXise0j5zu2lOqX8r5j8mmZWgPuQznYFdLG2WrK9j+y68pBdmg0BPO8jo
X-Gm-Message-State: AOJu0Yx6wBqvGOOATRnTeIOyo/5m54x7APnlSsSVLfbpAfAL44WBrZNs
 4he3xbG0NxGbzfNtsOfrCD5uDQNkcuxX0reCAFegYOXqJQqAlLaZhbtVyOCZLEWIyBdWvj0syzm
 4epO5hMKBzukFdbIKiLdXNqfRKEo=
X-Google-Smtp-Source: AGHT+IFsoYFg4TPJZ/xBylk5B9Nfa55HU119ldFLC4g550cJsZKKSI+Id/ONzGwerMZ8W2tZHWzr/Kf097BxBvAdyL0=
X-Received: by 2002:a05:6808:181d:b0:3c5:d426:9b87 with SMTP id
 bh29-20020a056808181d00b003c5d4269b87mr1074785oib.23.1712151214780; Wed, 03
 Apr 2024 06:33:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-8-apais@linux.microsoft.com>
 <ea4ac7a3-13ae-4d22-a3d9-fcb7d9e8d751@linux.ibm.com>
In-Reply-To: <ea4ac7a3-13ae-4d22-a3d9-fcb7d9e8d751@linux.ibm.com>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 3 Apr 2024 06:33:23 -0700
Message-ID: <CAOMdWS+wH9qZ_08nVSQV1sY0C=uHMC+3NmPuFjwKzBFCgMa7MQ@mail.gmail.com>
To: Alexandra Winter <wintera@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > > > Signed-off-by: Allen Pais > > --- > >
 drivers/s390/block/dasd.c
 | 42 ++++++++++++ > > drivers/s390/block/dasd_int.h | 10 +++--- > >
 drivers/s390/char/con3270.c | 27 ++++++++----- [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rs0kL-0001gX-8e
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

> >
> > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> > ---
> >  drivers/s390/block/dasd.c              | 42 ++++++++++++------------
> >  drivers/s390/block/dasd_int.h          | 10 +++---
> >  drivers/s390/char/con3270.c            | 27 ++++++++--------
> >  drivers/s390/crypto/ap_bus.c           | 24 +++++++-------
> >  drivers/s390/crypto/ap_bus.h           |  2 +-
> >  drivers/s390/crypto/zcrypt_msgtype50.c |  2 +-
> >  drivers/s390/crypto/zcrypt_msgtype6.c  |  4 +--
> >  drivers/s390/net/ctcm_fsms.c           |  4 +--
> >  drivers/s390/net/ctcm_main.c           | 15 ++++-----
> >  drivers/s390/net/ctcm_main.h           |  5 +--
> >  drivers/s390/net/ctcm_mpc.c            | 12 +++----
> >  drivers/s390/net/ctcm_mpc.h            |  7 ++--
> >  drivers/s390/net/lcs.c                 | 26 +++++++--------
> >  drivers/s390/net/lcs.h                 |  2 +-
> >  drivers/s390/net/qeth_core_main.c      |  2 +-
> >  drivers/s390/scsi/zfcp_qdio.c          | 45 +++++++++++++-------------
> >  drivers/s390/scsi/zfcp_qdio.h          |  9 +++---
> >  17 files changed, 117 insertions(+), 121 deletions(-)
> >
>
>
> We're looking into the best way to test this.
>
> For drivers/s390/net/ctcm* and drivers/s390/net/lcs*:
> Acked-by: Alexandra Winter <wintera@linux.ibm.com>

 Thank you very much.

>
>
> [...]
> > diff --git a/drivers/s390/net/qeth_core_main.c b/drivers/s390/net/qeth_core_main.c
> > index a0cce6872075..10ea95abc753 100644
> > --- a/drivers/s390/net/qeth_core_main.c
> > +++ b/drivers/s390/net/qeth_core_main.c
> > @@ -2911,7 +2911,7 @@ static int qeth_init_input_buffer(struct qeth_card *card,
> >       }
> >
> >       /*
> > -      * since the buffer is accessed only from the input_tasklet
> > +      * since the buffer is accessed only from the input_work
> >        * there shouldn't be a need to synchronize; also, since we use
> >        * the QETH_IN_BUF_REQUEUE_THRESHOLD we should never run  out off
> >        * buffers
>
> I propose to delete the whole comment block. There have been many changes and
> I don't think it is helpful for the current qeth driver.


 Sure, I will have it fixed in v2.

- Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

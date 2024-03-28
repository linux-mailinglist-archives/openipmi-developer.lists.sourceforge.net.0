Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 332D5890A64
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 20:59:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvu6-00043E-6j;
	Thu, 28 Mar 2024 19:59:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rpvu4-000436-QQ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vnKBKhBKsmsJMY/bC4lZDp0UO96Fq//Yoyy126bkPGI=; b=EhPVlyU5v5H0lPwDo54CKU4UvW
 onoZthj0BKdT32/Otp3b2HVlnOPBun34Di9eT+/NqFoJW8jXb9Xmd/cfshQUpDCyHCPPqBVUT3GHP
 1pY4Kmywqkx3w7eYEVfUilF1bnLF8Dl997SxjjHKC2hj1NqY77YvXZvYZ3Vst7bzOQho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vnKBKhBKsmsJMY/bC4lZDp0UO96Fq//Yoyy126bkPGI=; b=mY0Q1mWbCgG/k1JJM1EiBmbJf1
 y/GXQEDjTyh0Gh3y7hi/mMrogYsoRkoJC8HWBjLPrF08xGraLULKkdW7WO+aCLp6n1cVFWsrAXaFb
 QvBcwQQwLn8a195ap0VkghaKRjZNrzIPRdgncpHdl3nHCixbacGk6HO6cedpSZ89wA7s=;
Received: from mail-ua1-f50.google.com ([209.85.222.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpvu2-0006B6-Ra for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:59:12 +0000
Received: by mail-ua1-f50.google.com with SMTP id
 a1e0cc1a2514c-7e101b8fed9so336110241.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 12:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711655940; x=1712260740; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=vnKBKhBKsmsJMY/bC4lZDp0UO96Fq//Yoyy126bkPGI=;
 b=lE0Lro5cw4ZH8mbVLoRXyfh/hQdlKb7y1MkxkRTBYbIWACenztSZTMIPohYs7DhYpx
 PvU5F+wId+fpqGaOochJPPhgfPeiTRLL9LMD9Xi9IkfCvsIZmPZ59NawrtW5yRbIFrjZ
 rtdOxEXTQXEffRDhZTHTBy4yl4KIU70BybNBqbWzCxJhhUIBlTcoYP5mfCiTvJnyQJZn
 pVJ6NY+wRye93B1LeHwZV6R9Fh1ACUCxioiI12R3W3ibW9fMy8ePpKe9XPkwqvUGIO5Y
 BrJBCShA59lGjGJBXM1wYO4emuO/lvaJeUN3R8McjciycseSRnOFqu41Fag5THnHrgIt
 3tIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711655940; x=1712260740;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vnKBKhBKsmsJMY/bC4lZDp0UO96Fq//Yoyy126bkPGI=;
 b=SVAyjbunyVx5leaw7NegC/1C9u6+MNdUpnWLAc1FEeU9+tS768gGoneKz0kYHDkE5v
 PIfm/3cikVSKxG9yv+LD/iL8Anx4TFW8z+f8FFL7xuGjbYEMz7IL/2EZhoJnGHSgdl12
 DgJhVyd1nKjiwFtfqRkLC85zzvCPb/GMTHLEM51z7psWIVSOelNCM0s5xVQEVzVjUNVt
 WFsA/9jjL8WyshbOo2MAu8IGvQpPU0Iqhn1NV3Xqyqt5HEDt1lobd50wmF4P2rkr8jKZ
 +VyfLnk7R2AFEU1twaTX1ol+8G1uFAjdih0YdpndHIPfp3Y6aIJbNl17FiHCkX8oAXhW
 bJ9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGIFblynYBeMRmHzeRJNb7dm7HAf8sxa8m8Wo9mLCV1xhzC1iqbwyRN+Vyp74HM3d4w49mVA81zLG260cNk3gkndlxoERuOesirxW/0OsCiOYlIiCLZZ8J
X-Gm-Message-State: AOJu0YzF3p88X7csYgHr0XGGaxUHJdJQDI1KAUBNn+/uYTLPbab3c/sp
 tngfSD2IMf05Jr1OHdQoOcU9xjxW6TTQyL31kzFmEPDP1m1QV/wY9Eqy6DhJMH+NkXMg6GcfFZQ
 EMHfEhVnSp2DJ0DGUYwY3pVQKjHM=
X-Google-Smtp-Source: AGHT+IEsqiTQ+RuhLXyb/Y+jV0DgOZDtp/0zVM9owKFV3xn7f9aoxOYdP+JeSKGOIKqBlapOYOkCUtaaLw32MikZSqo=
X-Received: by 2002:a05:6102:2a65:b0:476:cf52:e1b7 with SMTP id
 hp5-20020a0561022a6500b00476cf52e1b7mr141814vsb.28.1711655940207; Thu, 28 Mar
 2024 12:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-7-apais@linux.microsoft.com>
 <ZgRePyo2zC4A1Fp4@mail.minyard.net>
 <CAOMdWS+1AFxEqmACiBYzPHc+q0Ut6hp15tdV50JHvfVeUNCGQw@mail.gmail.com>
 <ZgXDmx1HvujsMYAR@mail.minyard.net>
 <CAOMdWS+nB5EENp_Vb=k1j77nrch5JgbZP2XYPJ2ieTja14zB0w@mail.gmail.com>
 <ZgXKeL36ckOyNpI/@mail.minyard.net>
In-Reply-To: <ZgXKeL36ckOyNpI/@mail.minyard.net>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 12:58:49 -0700
Message-ID: <CAOMdWS+KrT2dK0XiEkZJT0aHnre1sr6gMMSkdxuXZaUh5e2e8Q@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > > > > > > > Fair point. Could you please let me know once
 you have had a chance to test > > > > these changes. Meanwhile, I will work
 on RFC wherein IPMI will have its own > > > > workqueue. > > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.50 listed in wl.mailspike.net]
X-Headers-End: 1rpvu2-0006B6-Ra
Subject: Re: [Openipmi-developer] [PATCH 6/9] ipmi: Convert from tasklet to
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

> > > >
> > > >   Fair point. Could you please let me know once you have had a chance to test
> > > > these changes. Meanwhile, I will work on RFC wherein IPMI will have its own
> > > > workqueue.
> > > >
> > > >  Thanks for taking time out to review.
> > >
> > > After looking and thinking about it a bit, a BH context is still
> > > probably the best for this.
> > >
> > > I have tested this patch under load and various scenarios and it seems
> > > to work ok.  So:
> > >
> > > Tested-by: Corey Minyard <cminyard@mvista.com>
> > > Acked-by: Corey Minyard <cminyard@mvista.com>
> > >
> > > Or I can take this into my tree.
> > >
> > > -corey
> >
> >  Thank you very much. I think it should be okay for you to carry it into
> > your tree.
>
> Ok, it's in my for-next tree.  I fixed the directory reference, and I
> changed all the comments where you changed "tasklet" to "work" to
> instead say "workqueue".
>

 Thank you very much for fixing it.

- Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

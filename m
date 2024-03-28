Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F785890963
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 20:39:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvbJ-0003d4-Sq;
	Thu, 28 Mar 2024 19:39:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rpvbI-0003cx-Ps
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:39:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=622VK9NVBI6NV/BHlHroiE+gl2GqatwpJmnEQrqKhSw=; b=G2vaVapkEPkP/RR/WkPXer2sD3
 c5ANlHga8yKQeHQQq72NsBkApmNTgnGfh+mXpVQWp67sVjoIcYeh04xdjZI7K0uaSHPJRMMVmNCDp
 KwevELJPWY8M4cV5n90MT4WgsAGZ8bli5v2BZkUNmn1oyqy/dYpY/Q01VecH1a5VfFg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=622VK9NVBI6NV/BHlHroiE+gl2GqatwpJmnEQrqKhSw=; b=bOf7El7NlzkAuDkOy8otwWfNOu
 fcPrpZa3iS2QPUJqKwM4B4/yHZMql10zFIz9EkbBUa3awLFszLpjBVwE4L3PS9HlLiYJ8S5DnGS5x
 21i+jGVEtPZ8kflfjiaSrv1SdrY2o+VAyj2qaCOwWUWce8vwLGyIPQD3z8MKYeRIEa3s=;
Received: from mail-vk1-f169.google.com ([209.85.221.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpvbH-0004nw-K6 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:39:48 +0000
Received: by mail-vk1-f169.google.com with SMTP id
 71dfb90a1353d-4d8a2ff9d68so477030e0c.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 12:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711654782; x=1712259582; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=622VK9NVBI6NV/BHlHroiE+gl2GqatwpJmnEQrqKhSw=;
 b=mUi5Sf+fKGIXqUOF741qn0va2rrFLepihCddebejhW5WDcxriSlYtiVBMjanPp+zC1
 3MelPs5z+T56uP8QIDiCRYqdMu4uW+Tbe90yW2dzaUw95i/CddcPJtgDNO05xeJJF3bZ
 OEfa/G/5ZJNXv+CwIFxg2ts4uHRVzy69/RlbOwZFOOqX62HWvvuMHwJ8silFQOn6rQ8s
 NbPmcuOMVbvwyV4BERXoKWBe86h+/KRH3xZ1bV2CPJprUMVIQTWK+IGY6y7R154DdZ0U
 5SyQPOsW5Aid9YDqkaUlkGGsiIhx4n0UhfKzPl/2D/jiwS6b+aztehsUEWftcXJEq6yJ
 woMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711654782; x=1712259582;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=622VK9NVBI6NV/BHlHroiE+gl2GqatwpJmnEQrqKhSw=;
 b=q1dwcqtIltYlcczAq3EncbL9iEJUUpgdxF29jtoaKrdh/3vZN4+yQB2Nq2poHXOPMS
 xtwJ0HqJSdgc9ejabcGMATEYBrBG3O/1On6dt54tMVoUob5tk7McHJXjMSkhZtxatzhP
 Sp1XAo/boHtMNeGqIzO5WZFOxrFw0AWH3dTp7QHGvkQOzMoPx9BdDzFUYtitGcyeX0/r
 m1gUfcaR+rCUlx5iUVkN1mcwzloWYLcoxVpz7PrwdtwzdLf78UF0cw6RWBQsyGnCmqyI
 fWUepuBrwBtxffZDCy2c3zKhqo3V6NksW3BObq4+Y2NvTObVPcZFHsbjLhliZVDkb0YW
 0Gdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYW52XBH5ou2KyacrjX2UEuc0SgFLkIbIjx7/iySpmPshEg9byhFo6rFRyMEIP5wq37lrAiQq/X07PLRnYsIspusMN2vI8zE8y22wd8W/9TOd/fN3A34mq
X-Gm-Message-State: AOJu0YyCapkF1Cs00kfRmlVHhcdvCqDu8KjLRcrIQiHNU2gABL9yyGJn
 HL+M1iVcmQ9uFoyUAyWdvhqjcJvqMvjh0IEBppbxBRsUe/M1G6reFYgN7EFdgzlSbXH+UMr6B4C
 H2PL/LzWjXon7SDIHOSnU+CvVea0=
X-Google-Smtp-Source: AGHT+IEY59Ji/OARBUAoYgwqWp5p4Pop3R94bZWuKlJaRj9K8xYwJ5pD7jLBPmXxcg5SXNElqhUUtT98mEK7bvSO2Kc=
X-Received: by 2002:a1f:c801:0:b0:4d4:1cca:1a72 with SMTP id
 y1-20020a1fc801000000b004d41cca1a72mr369742vkf.6.1711654781874; Thu, 28 Mar
 2024 12:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com> <ZgUGXTKPVhrA1tam@matsya>
 <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
 <ZgW3j1qkLA-QU4iM@matsya>
In-Reply-To: <ZgW3j1qkLA-QU4iM@matsya>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 12:39:30 -0700
Message-ID: <CAOMdWSKY9D75FM3bswUfXn2o7bGtrei3G5kLt6JdcdOPDXaG8g@mail.gmail.com>
To: Vinod Koul <vkoul@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > >> The only generic interface to execute asynchronously
 in the BH context is > > >> tasklet; however, it's marked deprecated and
 has some design flaws. To > > >> replace tasklets, BH workqueue sup [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.169 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rpvbH-0004nw-K6
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
Cc: imx@lists.linux.dev, Ulf Hansson <ulf.hansson@linaro.org>,
 Oliver Neukum <oneukum@suse.com>, duncan.sands@free.fr,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 "linux-mmc @ vger . kernel . org" <linux-mmc@vger.kernel.org>,
 aubin.constans@microchip.com, Linus Walleij <linus.walleij@linaro.org>,
 Frank Li <Frank.Li@nxp.com>, linux-hyperv@vger.kernel.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-tegra@vger.kernel.org, Netdev <netdev@vger.kernel.org>,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-riscv@lists.infradead.org, "K. Y. Srinivasan" <kys@microsoft.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, haijie1@huawei.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wei Liu <wei.liu@kernel.org>, Linux-OMAP <linux-omap@vger.kernel.org>,
 oakad@yahoo.com, Florian Fainelli <florian.fainelli@broadcom.com>,
 linux-rdma@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Dexuan Cui <decui@microsoft.com>,
 HaraldWelte@viatech.com, Jernej Skrabec <jernej.skrabec@gmail.com>,
 "jh80.chung" <jh80.chung@samsung.com>, zw@zh-kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Alan Stern <stern@rowland.harvard.edu>,
 linux-arm-msm@vger.kernel.org, Orson Zhai <orsonzhai@gmail.com>,
 pierre@ossman.eu, linux-usb@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 Patrice Chotard <patrice.chotard@foss.st.com>, asahi@lists.linux.dev,
 brucechang@via.com.tw, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Sven Peter <sven@svenpeter.dev>,
 Ray Jui <rjui@broadcom.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sean Wang <sean.wang@mediatek.com>, linux-actions@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allen Pais <apais@linux.microsoft.com>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Scott Branden <sbranden@broadcom.com>, logang@deltatee.com,
 Bjorn Andersson <andersson@kernel.org>, Hector Martin <marcan@marcan.st>,
 Haiyang Zhang <haiyangz@microsoft.com>, linux-kernel@vger.kernel.org,
 Leo Li <leoyang.li@nxp.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 linux-sunxi@lists.linux.dev, Zhou Wang <wangzhou1@hisilicon.com>,
 linux-s390@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Tejun Heo <tj@kernel.org>,
 Manuel Lauss <manuel.lauss@gmail.com>, linux-media@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> > >> The only generic interface to execute asynchronously in the BH context is
> > >> tasklet; however, it's marked deprecated and has some design flaws. To
> > >> replace tasklets, BH workqueue support was recently added. A BH workqueue
> > >> behaves similarly to regular workqueues except that the queued work items
> > >> are executed in the BH context.
> > >
> > > Thanks for conversion, am happy with BH alternative as it helps in
> > > dmaengine where we need shortest possible time between tasklet and
> > > interrupt handling to maximize dma performance
> >
> > I still feel that we want something different for dmaengine,
> > at least in the long run. As we have discussed in the past,
> > the tasklet context in these drivers is what the callbacks
> > from the dma client device is run in, and a lot of these probably
> > want something other than tasklet context, e.g. just call
> > complete() on a client-provided completion structure.
> >
> > Instead of open-coding the use of the system_bh_wq in each
> > dmaengine, how about we start with a custom WQ_BH
> > specifically for the dmaengine subsystem and wrap them
> > inside of another interface.
> >
> > Since almost every driver associates the tasklet with the
> > dma_chan, we could go one step further and add the
> > work_queue structure directly into struct dma_chan,
> > with the wrapper operating on the dma_chan rather than
> > the work_queue.
>
> I think that is very great idea. having this wrapped in dma_chan would
> be very good way as well
>
> Am not sure if Allen is up for it :-)

 Thanks Arnd, I know we did speak about this at LPC. I did start
working on using completion. I dropped it as I thought it would
be easier to move to workqueues.

Vinod, I would like to give this a shot and put out a RFC, I would
really appreciate review and feedback.

Thanks,
Allen

>
> --
> ~Vinod
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

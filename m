Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB56890A86
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 21:02:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvx0-0002wn-L7;
	Thu, 28 Mar 2024 20:02:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rpvwz-0002wf-JL
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 20:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lQZIemFmXjC6xyiLulQ43Ea/EhoY/GbG4RXFhJQU0/8=; b=TuaXDc8iOGiNC0TJKSCQOe+Sl1
 /VjEIUW8hUzVPN480fB2vGVcflGifwyk3k+kjx0LKpN/kSqIT4KtpVkaVsQJpIedJJhxgQV37Yc+C
 y99QFrNNxhH95XVGBQ6YDduAf5+JQCIyKVlQkgI4/0JUl02ygp5jZ2/o8OFmVBhVsS84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lQZIemFmXjC6xyiLulQ43Ea/EhoY/GbG4RXFhJQU0/8=; b=kaaWzRGHaFQCdaC7brPEq4+ups
 //x099m6ZXAhsIqUCqhqSZo/lOYN9BHouGXWF7MAetblzTvK7qzdujVN3DIF5ZD6f7pBT+9yrGeS+
 rgInSpJ6tsqPj/hN4Snapx/9DO2QqKa/V6MKMfLk2YhsDu4ZoLnO5QBJmwk9JM0uOnbo=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpvwx-0006Pp-VV for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 20:02:13 +0000
Received: by mail-qk1-f180.google.com with SMTP id
 af79cd13be357-78bbed7adaaso62354185a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 13:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711656126; x=1712260926; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lQZIemFmXjC6xyiLulQ43Ea/EhoY/GbG4RXFhJQU0/8=;
 b=N0ofpOU5pRsgnaDPc9hLAp7ExhoIM1S8NYs4mZ7i1y3wDtZw32XqBqwcVDqQO/QMlc
 RzlHRD4w7tV5Rjv5MxAclaHWE4i02kCl/InR/KxX3HcF5KEJhWV5vO0Bz517v2m2wewU
 MlfuVjU6/K/zpkpH8YUTN2Nsj21D8YReWkeMcxM284A96Wd3l3WvkHoDkmLwgagtx0Ra
 N4A2j7OYPUGClGa0yndQ1UGTp1lfteEpGntdetavO9OInmhfublikyl0wAufEyqqkc4F
 BjLHYN1jLD6aQPPgke2o/ZR0u23BHqE1kyERyhNq7WIxex9sv3MNS6owW8AKeS1y9W3B
 W/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711656126; x=1712260926;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lQZIemFmXjC6xyiLulQ43Ea/EhoY/GbG4RXFhJQU0/8=;
 b=aZtM4wDSKx4xFoSWYO5LswOj5IaPpG/voH9i7MPUyPRd2xaIawKZj2aw14Rx/2ofOu
 UjvNPAUCp+580GDhrnEGjcInRem1SlGKsz4Gpbj5+zq0h2AZQTzvh6X2/uZ46Wp3S4Cf
 toV2FjMBu7jefpwuWmDQKJyMHkCueoYWjgpGAJJVZcMkt5eGwoZqHJKP/bMVeZhDRZCv
 e/g/5B5qXd+TbnLbJL84fnsm+uC60IkWtQgp/nw6EpyQ+EOTcJco4oA9MOprujx/Vkw3
 WLd50qBiyllslpFvDFvyO2AwYHYXMD/juk4x86X7egzYFMZN00gOsqjJTjScF4d85oTP
 vqgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8DcetLDpOgw9Rg9GdByWwKZLKWLVPg6NnKFOM8CHfNSXMtiO6NQVDutFZI9+1XUSE38oPrdDNaK0Hdhy/LrPYxTslPaEi9OALwLit2EXf3u3RHLHyHiiL
X-Gm-Message-State: AOJu0YwmpkDWPJ/y5inB/8x2KOJoW4o+ngDV5LcMxQW8tG9of25PyN3i
 h5+AxCMJ79F/wx9OgMfVYsG3bx1Kx1EZFJYeM/uef4GsIPlIvdBJinr1hEBOSQ62FQhSAPEX5ji
 byr/YKj/LsS0cADfOcelkV1Ng0NY=
X-Google-Smtp-Source: AGHT+IFQNOvoxYEranyGbOCvmAR4etDDhau+OcrTFex7JkKGx6yINzP/h18hs1c4qiY1arvh6SuEYWtwfkxWkgaJ4wM=
X-Received: by 2002:a05:620a:c4e:b0:78a:62a6:7e2f with SMTP id
 u14-20020a05620a0c4e00b0078a62a67e2fmr5081544qki.5.1711656126274; Thu, 28 Mar
 2024 13:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com> <ZgUGXTKPVhrA1tam@matsya>
 <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
 <ZgW3j1qkLA-QU4iM@matsya>
 <CAOMdWSKY9D75FM3bswUfXn2o7bGtrei3G5kLt6JdcdOPDXaG8g@mail.gmail.com>
 <678ba20b-9f1d-41cb-8a25-e716b61ffafe@app.fastmail.com>
In-Reply-To: <678ba20b-9f1d-41cb-8a25-e716b61ffafe@app.fastmail.com>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 13:01:55 -0700
Message-ID: <CAOMdWSKC4B8zn6N+=5DssB_BiR6JkHBEpJr0ohKb149eJvCKMQ@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > >> > Since almost every driver associates the tasklet with
 the > >> > dma_chan, we could go one step further and add the > >> > work_queue
 structure directly into struct dma_chan, > >> > with the wr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rpvwx-0006Pp-VV
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
 Oliver Neukum <oneukum@suse.com>, Duncan Sands <duncan.sands@free.fr>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 "linux-mmc @ vger . kernel . org" <linux-mmc@vger.kernel.org>,
 aubin.constans@microchip.com, Linus Walleij <linus.walleij@linaro.org>,
 Frank Li <Frank.Li@nxp.com>, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, HaraldWelte@viatech.com,
 Paul Cercueil <paul@crapouillou.net>, linux-tegra@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, maintainers@bluecherrydvr.com,
 peter.ujfalusi@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-riscv@lists.infradead.org, "K. Y. Srinivasan" <kys@microsoft.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, haijie1@huawei.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wei Liu <wei.liu@kernel.org>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>, linux-rdma@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 Dexuan Cui <decui@microsoft.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 "jh80.chung" <jh80.chung@samsung.com>, zw@zh-kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Alan Stern <stern@rowland.harvard.edu>,
 linux-arm-msm@vger.kernel.org, Orson Zhai <orsonzhai@gmail.com>,
 pierre@ossman.eu, linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 Patrice Chotard <patrice.chotard@foss.st.com>, asahi@lists.linux.dev,
 brucechang@via.com.tw, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 Sven Peter <sven@svenpeter.dev>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sean Wang <sean.wang@mediatek.com>,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
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
 linux-sunxi@lists.linux.dev, Vinod Koul <vkoul@kernel.org>,
 linux-s390@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Tejun Heo <tj@kernel.org>,
 Manuel Lauss <manuel.lauss@gmail.com>, linux-media@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> >> > Since almost every driver associates the tasklet with the
> >> > dma_chan, we could go one step further and add the
> >> > work_queue structure directly into struct dma_chan,
> >> > with the wrapper operating on the dma_chan rather than
> >> > the work_queue.
> >>
> >> I think that is very great idea. having this wrapped in dma_chan would
> >> be very good way as well
> >>
> >> Am not sure if Allen is up for it :-)
> >
> >  Thanks Arnd, I know we did speak about this at LPC. I did start
> > working on using completion. I dropped it as I thought it would
> > be easier to move to workqueues.
>
> It's definitely easier to do the workqueue conversion as a first
> step, and I agree adding support for the completion right away is
> probably too much. Moving the work_struct into the dma_chan
> is probably not too hard though, if you leave your current
> approach for the cases where the tasklet is part of the
> dma_dev rather than the dma_chan.
>

 Alright, I will work on moving work_struck into the dma_chan and
leave the dma_dev as is (using bh workqueues) and post a RFC.
Once reviewed, I could move to the next step.

Thank you.

- Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

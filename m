Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8840789085F
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 19:32:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpuXm-0004Gl-Ac;
	Thu, 28 Mar 2024 18:32:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vkoul@kernel.org>) id 1rpuXk-0004Ge-4P
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 18:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3CoqXNTRcmwlCY/xhGyAVojJiT/UcLdDcoASRjE/JUY=; b=TH0HmDDJydIuV7+WAJAcQCGRlB
 ooBg67xl148ax9XtgePLJuC3Q50nReVx5aJnMqZmvT1cpFijifwm+B763AV/z5D5Es5Q8u8M/SmEO
 e2QbTtkKTXcNGsA/KQDHSAzpwMWAwPC4HTN730S7sV76zUIVG6GfUiuxMNxsZZR8oP3s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3CoqXNTRcmwlCY/xhGyAVojJiT/UcLdDcoASRjE/JUY=; b=mZRed5stJ5uy9KEXO47539JgbI
 ftdulszsaIOp+HrbO4AsufCJIKhr60ue4+evMnbeLqsZmWahOw1dxFKfoC39IHg2n/PWfL5zg8Xzn
 1XRDqoXszYiuQ9AwGHim5cJW9nIEbrg6O/NUZw4HHKbgRFHnQ+BmcQYM4cHCBhw30IDA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpuXf-0000sv-PN for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 18:32:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7250A61783;
 Thu, 28 Mar 2024 18:31:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9561C433C7;
 Thu, 28 Mar 2024 18:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711650709;
 bh=09Kq07Ctu1YK6YAopY47/y5AlbJwjHjNBMXfeYxKY3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QQ+Ol01eGrtbmmXmm5UOF8z3YVrAFzrLyUinoyXQOw2oD/3BtgXxtRpcyL6qEGHMi
 Fuf1dGmu1+mXVCx0A2v+QG1OZmZa5GwKeTprSp0vXiGl5WvN4w7glf0wb/Ho4jGsI6
 A7WhuNfxRZ+SYEDd2EHDavctgY396ec7mZY6h+UmOVbwQhncgmm56Grgtq512eTU0I
 juRVEJtAyO8mA2/2SAJmqgsMiWvU8lqDqaMAEVDmDUSGgn+tYLJ7mum23hafaIgM0S
 0/cB+mlWradcKD4+nkGPqD1rFiy3Q7s73Qm1b4qRq5IHy2lK358t2WVn9s4EqNJkuF
 qXaWYWlrz6OoQ==
Date: Fri, 29 Mar 2024 00:01:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <ZgW3j1qkLA-QU4iM@matsya>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com>
 <ZgUGXTKPVhrA1tam@matsya>
 <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28-03-24, 11:08, Arnd Bergmann wrote: > On Thu, Mar 28,
 2024, at 06:55, Vinod Koul wrote: > > On 27-03-24, 16:03, Allen Pais wrote:
 > >> The only generic interface to execute asynchronously in the [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rpuXf-0000sv-PN
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
 Florian Fainelli <florian.fainelli@broadcom.com>, linux-rdma@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 Dexuan Cui <decui@microsoft.com>, HaraldWelte@viatech.com,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 "jh80.chung" <jh80.chung@samsung.com>, zw@zh-kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Alan Stern <stern@rowland.harvard.edu>,
 linux-arm-msm@vger.kernel.org, Orson Zhai <orsonzhai@gmail.com>,
 pierre@ossman.eu, linux-usb@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 Patrice Chotard <patrice.chotard@foss.st.com>, asahi@lists.linux.dev,
 brucechang@via.com.tw, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 Sven Peter <sven@svenpeter.dev>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sean Wang <sean.wang@mediatek.com>,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
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
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 28-03-24, 11:08, Arnd Bergmann wrote:
> On Thu, Mar 28, 2024, at 06:55, Vinod Koul wrote:
> > On 27-03-24, 16:03, Allen Pais wrote:
> >> The only generic interface to execute asynchronously in the BH context is
> >> tasklet; however, it's marked deprecated and has some design flaws. To
> >> replace tasklets, BH workqueue support was recently added. A BH workqueue
> >> behaves similarly to regular workqueues except that the queued work items
> >> are executed in the BH context.
> >
> > Thanks for conversion, am happy with BH alternative as it helps in
> > dmaengine where we need shortest possible time between tasklet and
> > interrupt handling to maximize dma performance
> 
> I still feel that we want something different for dmaengine,
> at least in the long run. As we have discussed in the past,
> the tasklet context in these drivers is what the callbacks
> from the dma client device is run in, and a lot of these probably
> want something other than tasklet context, e.g. just call
> complete() on a client-provided completion structure.
> 
> Instead of open-coding the use of the system_bh_wq in each
> dmaengine, how about we start with a custom WQ_BH
> specifically for the dmaengine subsystem and wrap them
> inside of another interface.
> 
> Since almost every driver associates the tasklet with the
> dma_chan, we could go one step further and add the
> work_queue structure directly into struct dma_chan,
> with the wrapper operating on the dma_chan rather than
> the work_queue.

I think that is very great idea. having this wrapped in dma_chan would
be very good way as well

Am not sure if Allen is up for it :-)

-- 
~Vinod


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

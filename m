Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB548921D9
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Mar 2024 17:40:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rqFGm-0002sz-3O;
	Fri, 29 Mar 2024 16:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vkoul@kernel.org>) id 1rqFGl-0002ss-P4
 for openipmi-developer@lists.sourceforge.net;
 Fri, 29 Mar 2024 16:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7kBMjssFuU7qb+lDgAID28McqHpYdJdKjSiHXIC3Jco=; b=cqSqZSUAItcM//8aVLEr+70pfE
 mKK3farsfh61Nqw71RQko3MTR5RPJXxjoCAeFjgr43NgIBV2ZRwUXH32VPGZ0cBOw5R00KfsjQ8TY
 idf1MO+CDCgJr0u2srOupSoevBcMj2dKs0PGfua3c+jvxPaS4QYqAv/KEOqmrivvvEi0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7kBMjssFuU7qb+lDgAID28McqHpYdJdKjSiHXIC3Jco=; b=SKI7oRdCWQxq7i0ybkWjsAp61M
 smqz7fRpYJCDmIvWInLYK32/PYze3rzp2eMbq4tqe/RySsDjSDDOJ/z6LneoQrm4HxctN37y9IQlA
 FsbzXFyF5rBPzBck+jB5H0hBOSFR1zDyhec4noLguCK/F3SQnmeWtShOqsWB+HY87LT0=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rqFGh-0001iR-3a for openipmi-developer@lists.sourceforge.net;
 Fri, 29 Mar 2024 16:39:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 385F9CE301C;
 Fri, 29 Mar 2024 16:39:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4D9DC433C7;
 Fri, 29 Mar 2024 16:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711730378;
 bh=bg+h7PlnfTedz1YBjzApxZkMOAnsBGDd8/EzMTXhZfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uW7qxP8y8ACgUR891lLqNXK4nRCSSexkXmk3NVlX/43RdUbJKhMUBo+3F7ImHHCLd
 EgMy3VnFONlXXBX8N/84xV65QgEoe3byfIcVSoYOnvkYvas222h0lZkI0ts/7GK5dK
 RXDBa+pCTcdJsCx5bNqP+0NeWpjfPDjTw0LzbJBD2TGFbdPiUtd9S2xCHSf/YkWg3h
 LkeVRnbJmAa4tPbrg134PWkZdQ7HBQC4t3veXbL+goDjmVnDap5Tj4fOkvn8ClJwbk
 uuZW1rzs8wZhLpPlp2dMwsOxB3VXY8Xf/XxfLnuX/VdqMAE2Sw5BpezoMJa9uZRiGz
 dYTGMY6Ps7ZVQ==
Date: Fri, 29 Mar 2024 22:09:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Allen <allen.lkml@gmail.com>
Message-ID: <ZgbuxmxncU0-0jhA@matsya>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com>
 <ZgUGXTKPVhrA1tam@matsya>
 <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
 <ZgW3j1qkLA-QU4iM@matsya>
 <CAOMdWSKY9D75FM3bswUfXn2o7bGtrei3G5kLt6JdcdOPDXaG8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMdWSKY9D75FM3bswUfXn2o7bGtrei3G5kLt6JdcdOPDXaG8g@mail.gmail.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28-03-24, 12:39, Allen wrote: > > I think that is very
 great idea. having this wrapped in dma_chan would > > be very good way as
 well > > > > Am not sure if Allen is up for it :-) > > Thanks Arnd, I know
 we did speak about this at [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rqFGh-0001iR-3a
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

On 28-03-24, 12:39, Allen wrote:

> > I think that is very great idea. having this wrapped in dma_chan would
> > be very good way as well
> >
> > Am not sure if Allen is up for it :-)
> 
>  Thanks Arnd, I know we did speak about this at LPC. I did start
> working on using completion. I dropped it as I thought it would
> be easier to move to workqueues.
> 
> Vinod, I would like to give this a shot and put out a RFC, I would
> really appreciate review and feedback.

Sounds like a good plan to me

-- 
~Vinod


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

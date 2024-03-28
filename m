Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A28828909A3
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 20:50:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvlX-0002HT-Lz;
	Thu, 28 Mar 2024 19:50:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1rpvlW-0002HL-2g
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BW4gpjPip0MIz7Sv02WTjVBL1poTtTjeiFToXn5W8yQ=; b=T2SHLrsy7G7gzPzOrg6GbFBGfu
 p6dZ+Kc0+9Znu7Hu1Heb7FRDxZpNIH3VwIEuVQXPtDS38jE1+MyQP+b6gBac2QwgjJjQIUtqL/MXS
 Qpl00ymjOSjnY5Gt+uxqIgF3Q3irfgkTzEdXRA0UY5X2uNN2B9wXDZeP2QkrntddP/sw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BW4gpjPip0MIz7Sv02WTjVBL1poTtTjeiFToXn5W8yQ=; b=dpvERsZC3mDWb/SDNod7nR1Ehn
 iIZHabQMuOKrC5HIaeC+m/FxkzKvD7Y8dAJOU71vLodDXRMwuUU/P1ErTIpyibSTeuAkuE2WyEqxI
 Zph8gXb3s7DUnwo0/5dqd6HbWinx2TgZQyiTcQ0CtGHmvt39zb8mBx/vs5l/1FT+NuWo=;
Received: from flow5-smtp.messagingengine.com ([103.168.172.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpvlS-0005Vc-Oe for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:50:22 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailflow.nyi.internal (Postfix) with ESMTP id 35A5620026D;
 Thu, 28 Mar 2024 15:50:08 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 28 Mar 2024 15:50:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1711655408; x=1711662608; bh=BW4gpjPip0
 MIz7Sv02WTjVBL1poTtTjeiFToXn5W8yQ=; b=f7UX+4Pcu6g1fuDG/2VVEitZ3G
 QUMw7eXjSXsVFH66+taJAuA+K236VIbLKYe25JuST225E4z1xHxL2/2LtCRDTnmU
 n6ve6KfgedMjL2XLQveE6wn2Etpx5XZpxwVEvGc9S8uh0MO7kxHXOMvBs0RSLgOb
 Z4x6VFyXqeAGF29fvaja951eipxGSjyBqxDJrgJqsQGYGDJchM0S/wIgeKCC56Tp
 yy3P1woDZ2PYXLyJCN7oQDlQyZnTv8POQK4Y9IX1QsW7x4LXBpTuUVXL079pL1qY
 c8aHoEkfsGnaqC7cdNeGeJKfDtIInY7//byDCYjIJh0GZpsXE1Nlwpvc28Ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711655408; x=1711662608; bh=BW4gpjPip0MIz7Sv02WTjVBL1poT
 tTjeiFToXn5W8yQ=; b=csg1O07txOaVvOWughgoF1bJEzemGtOETePgwtvzZAfA
 VtfvSPlTmevhy2SRIOSlxGl/ziKmaxcsgCY8MskufwdkbniJlzOnf6V2YN6oj/wj
 O/GMHPI1vHTQCnnkxXW8ewXWuqkTeHxgt378h4sL5SXj1OE11EYjcq+gJSzV/2yx
 57hBTFu9rPkf/BSl7zjPJkqQr23ZCzjOc+lNEw90HzsO6vZ1BHt1GGEbfjXZeYqk
 4mjQu7/I6378RC3ndN5bM7YGcXnnklViSVT1WVQmKqWfCE4MpnbATpOmDMjTcgSj
 Ndwws714kFqEKc2vOOAREK2Ek5kgI3Az+hJNSEwS1A==
X-ME-Sender: <xms:7ckFZgx5tu4bAvUGLkKcZrX-cRBBCFPUwivVbrqpvYnxZjfR3Ouh3g>
 <xme:7ckFZkRueNttJPZFneG6Q80JylGkQF6mdDjM59ne5mlAoW1W9VzUlkuyJ4EgvxkD9
 qcvlQkaqolFxDiDZLU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudduledguddvlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdet
 rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
 htthgvrhhnpeffheeugeetiefhgeethfejgfdtuefggeejleehjeeutefhfeeggefhkedt
 keetffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:7ckFZiVjaDs8eD5LFreZzpgUuHvfIy_8fMXgOX4leo573jO7501ZgQ>
 <xmx:7ckFZujghNVwcfUCWKm85BVyJWRtb8_SXoseITfNpe_wG_psaAm3sQ>
 <xmx:7ckFZiD3xw2zvDrylXyZZwHVDAyX3ZEv_6D9gPl8_sbUEnjX936dYg>
 <xmx:7ckFZvKUkZitQXBsGo5-E7fjRHu2EeySeOnc0hwOM13gLqXyAC2RIw>
 <xmx:8MkFZpfgruaumRILI-G9uyonNT2Mm7JcDkeb2mObdPHz9wSV9uAJgiH6gVM>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7B52EB6008D; Thu, 28 Mar 2024 15:50:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <678ba20b-9f1d-41cb-8a25-e716b61ffafe@app.fastmail.com>
In-Reply-To: <CAOMdWSKY9D75FM3bswUfXn2o7bGtrei3G5kLt6JdcdOPDXaG8g@mail.gmail.com>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com> <ZgUGXTKPVhrA1tam@matsya>
 <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
 <ZgW3j1qkLA-QU4iM@matsya>
 <CAOMdWSKY9D75FM3bswUfXn2o7bGtrei3G5kLt6JdcdOPDXaG8g@mail.gmail.com>
Date: Thu, 28 Mar 2024 20:49:44 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: Allen <allen.lkml@gmail.com>, "Vinod Koul" <vkoul@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 28, 2024, at 20:39, Allen wrote: >> > >> > Since
 almost every driver associates the tasklet with the >> > dma_chan, we could
 go one step further and add the >> > work_queue structure direc [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.140 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rpvlS-0005Vc-Oe
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
 =?UTF-8?Q?Micha=C5=82_Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
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

On Thu, Mar 28, 2024, at 20:39, Allen wrote:
>> >
>> > Since almost every driver associates the tasklet with the
>> > dma_chan, we could go one step further and add the
>> > work_queue structure directly into struct dma_chan,
>> > with the wrapper operating on the dma_chan rather than
>> > the work_queue.
>>
>> I think that is very great idea. having this wrapped in dma_chan would
>> be very good way as well
>>
>> Am not sure if Allen is up for it :-)
>
>  Thanks Arnd, I know we did speak about this at LPC. I did start
> working on using completion. I dropped it as I thought it would
> be easier to move to workqueues.

It's definitely easier to do the workqueue conversion as a first
step, and I agree adding support for the completion right away is
probably too much. Moving the work_struct into the dma_chan
is probably not too hard though, if you leave your current
approach for the cases where the tasklet is part of the
dma_dev rather than the dma_chan.

      Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

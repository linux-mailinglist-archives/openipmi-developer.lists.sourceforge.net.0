Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3493888FCDE
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 11:23:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpmuU-0002Wt-7J;
	Thu, 28 Mar 2024 10:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1rpmuT-0002Wb-Cy
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 10:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pYBjGEQadh25rkMc0fkoc5Y7p79L1tP3xKDkS0IogRA=; b=ENETsfs2LGSs91+yNivDmO5ZQJ
 oBnYhoEcE5qlKa8t4gfrCdGHTFhX3ZN8DmAGmyVf6/QkANkSIxRDkucvJ2dJAXBxqd8Exw6WrpMcZ
 AoZ5pPLhlQO6kT855egTKGcKbb3eo0aXue41yZzKStziuj2GsEDc6D/AJ88UhcqYNkO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pYBjGEQadh25rkMc0fkoc5Y7p79L1tP3xKDkS0IogRA=; b=mISqXaNealiJ9joekbjXggKGsR
 mjk+ha21r8D89Mlh5xC4+ZsoXnAZYhrVhurVwWtxH1H/d7KgjEhPA6aLN8l6Hem1sU4BL23xcAHjh
 OUZWac872xMw/jnlnj++LxUGVZr1q0uMrP/rj1kkTqmWycdtreHF7bwrJCdeQdbRO3bk=;
Received: from flow8-smtp.messagingengine.com ([103.168.172.143])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpmuR-0007Gq-Mn for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 10:23:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailflow.nyi.internal (Postfix) with ESMTP id 5C11820053F;
 Thu, 28 Mar 2024 06:09:10 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 28 Mar 2024 06:09:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1711620550; x=1711627750; bh=pYBjGEQadh
 25rkMc0fkoc5Y7p79L1tP3xKDkS0IogRA=; b=bZ/F23JMPyrmIk/Ntj2seAKXb/
 fK61J0u8ls1qOi2xe5oyM0yZSsH19MZp9yi+zXy1BWPve1eXg+la8Sg/UxYaSRbf
 sz3eypDY+Q1OHr+nkbkQQXqADbtGp250VeO64zWBK3NlHeV3OuNA+AZQsGMbPzKc
 tIO1b/JsdoMTi9Sa4qtzIxjRNmOivgTzJ16capo1Du6/6Fjf289SueUzJiDFabNr
 qhusH+/OTCYUQ62Md0W6Kb3XPtKtRHxWZCqsKeVcfwYFkjwwnQZ/KFVsiJpsteij
 UEFhJXpiMc48Yj8JBMnhQua7+EaskwT/bkKa7TU7dUlzuZ/tjgJdklUZue1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711620550; x=1711627750; bh=pYBjGEQadh25rkMc0fkoc5Y7p79L
 1tP3xKDkS0IogRA=; b=wIyGwxiTM97DFQgPX8br04l4NUp1wbd4F4aPRoaUOJ69
 IWjYFE2zpRpr2ZuCwawUtQP0xu1riAaYJcF8USi+pvWpGBrvqxzl6qy9M8HeUTvj
 kVxQ7atxp6oErsgqwVoswrTCwbaiyfyUdp8+oN7eMDHgG5G6bSbHffjZHTbQsPbP
 IflwKJRYQrIc3e2sOalAP3O2nnPS7RFCYwh52d72tHyVVP1qCEG8loNKTO3Li5SS
 3ttm0HswwW743xnKX1Ty4B5+hDe8/KcLasvI/O1mopYD2mG+ye8Mw2HvxrKxhJv0
 BtW1IYz8le5pBrV97eBtuTiYg1cJRixjcewJiJzDtg==
X-ME-Sender: <xms:xEEFZjUDB6vUXVuE4su_mfFztVEXuLQBqnkQAhHLwG1jR8Gk4Rhccg>
 <xme:xEEFZrkXsFEZpvOySs979kbBxybPVD4HPzNHJDAuQc2A74iPvQQqs8EEN8sgZ1AOY
 -B735Q1j88_yj5yeME>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudduledgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:xEEFZvanNkHDHk3D4daIt3HN3RRy4VJsLZBS_5xTq6OZ_s46lBHeqg>
 <xmx:xEEFZuXz105eJN6iaqF1LnVwLMEtc10LEM014QjmGYfrwvQMnV9zQQ>
 <xmx:xEEFZtlackC-bm2ZG6jhrgNjSy9Qg70Et6FoLLjgTPEKil-mStUOQg>
 <xmx:xEEFZrdAQp1QGnibQ6HQuAZmU_FkzEzvep2EzwBzRXg0_5Nan7e3Mg>
 <xmx:xkEFZvTJcmNZMFGcjkzffyZ1DB1SyuiY0BkmrH3Smejf5bob7fZc1n9GOA0>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E6410B6008D; Thu, 28 Mar 2024 06:09:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <2e9257af-c123-406b-a189-eaebeecc1d71@app.fastmail.com>
In-Reply-To: <ZgUGXTKPVhrA1tam@matsya>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-3-apais@linux.microsoft.com> <ZgUGXTKPVhrA1tam@matsya>
Date: Thu, 28 Mar 2024 11:08:47 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Vinod Koul" <vkoul@kernel.org>, "Allen Pais" <apais@linux.microsoft.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 28, 2024, at 06:55,
 Vinod Koul wrote: > On 27-03-24, 16:03,
 Allen Pais wrote: >> The only generic interface to execute asynchronously
 in the BH context is >> tasklet; however, it's marked [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rpmuR-0007Gq-Mn
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
 =?UTF-8?Q?Micha=C5=82_Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
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

On Thu, Mar 28, 2024, at 06:55, Vinod Koul wrote:
> On 27-03-24, 16:03, Allen Pais wrote:
>> The only generic interface to execute asynchronously in the BH context is
>> tasklet; however, it's marked deprecated and has some design flaws. To
>> replace tasklets, BH workqueue support was recently added. A BH workqueue
>> behaves similarly to regular workqueues except that the queued work items
>> are executed in the BH context.
>
> Thanks for conversion, am happy with BH alternative as it helps in
> dmaengine where we need shortest possible time between tasklet and
> interrupt handling to maximize dma performance

I still feel that we want something different for dmaengine,
at least in the long run. As we have discussed in the past,
the tasklet context in these drivers is what the callbacks
from the dma client device is run in, and a lot of these probably
want something other than tasklet context, e.g. just call
complete() on a client-provided completion structure.

Instead of open-coding the use of the system_bh_wq in each
dmaengine, how about we start with a custom WQ_BH
specifically for the dmaengine subsystem and wrap them
inside of another interface.

Since almost every driver associates the tasklet with the
dma_chan, we could go one step further and add the
work_queue structure directly into struct dma_chan,
with the wrapper operating on the dma_chan rather than
the work_queue.

      Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

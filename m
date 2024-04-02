Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC7E894FC8
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Apr 2024 12:16:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rrbBy-0000tM-NZ;
	Tue, 02 Apr 2024 10:16:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ulf.hansson@linaro.org>) id 1rrbBx-0000tB-CZ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 10:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uzac7wtIrnnrBvtOLPs8xaD+ikoHcCxqEerEJoMcBFs=; b=EVtZnjz5P8COQLceQXAdOmvlkE
 OrB0Ao+9AUcbYROT/RsJF7OYyy8jfwVtPhCBFRbQZCfpYChT7pM5GjUWDO5Ls5ZkGHpJyy/NHAenJ
 iGUVcLrdBsVmzjG5DthDhNsgksT/YOcWJe8dxEveI9nPcRtZMkARR4SAVsuT4VfdtymA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uzac7wtIrnnrBvtOLPs8xaD+ikoHcCxqEerEJoMcBFs=; b=LGghdlj0F4Dl0w9yIO7MLMRruS
 8fedtjRc6jetqoDKmnuYqVrL0FOWWW/a6sgitOdb7MU4K9NShbgY15vyf4nLc5/p+MNIsLbETauir
 7j7XIr3bMuWI8tAmmPNAXv3vfsys/m8tJ/FASp0IIiM8wvKAY9Kxiu/ROEoBHxYj76Mc=;
Received: from mail-yb1-f181.google.com ([209.85.219.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rrbBw-0001dP-H5 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Apr 2024 10:16:34 +0000
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-dcbd1d4904dso4576653276.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 02 Apr 2024 03:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712052982; x=1712657782; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=uzac7wtIrnnrBvtOLPs8xaD+ikoHcCxqEerEJoMcBFs=;
 b=z5A1qbLzZOz0/eo5UziJ5M6y/bsFJbGS+A0ALIgc72iW5tkCsBB15GgCSnGnuPTOy1
 6AoAVWFcwRVeu8fqVgjnQoaDQhaBTTNXX/EG5JUoWe0kk6CmouhYyVS3zbfwWgrGVpBU
 bXlQ5m4a/YwssNyKPkZuTg+lFaiYmY27pKwh9K6gPExi7k7zwQvX/Db3PDKhs4P5o2fI
 CeN1l9Ymxk/2NPfr7DAA3eF/rW7wGsRJ3ZeYL43kfW1tkJCVcUOCO/cTGrIu/+9cFiQh
 Ys+NlxK4joTv1pYykROsCXHvCxxlvg7P3Gw0dWNzZQu071RIaZCXu8qOeiUJUTpOWpYd
 oKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712052982; x=1712657782;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uzac7wtIrnnrBvtOLPs8xaD+ikoHcCxqEerEJoMcBFs=;
 b=kspzythtzvDNzhMAX0dL+mZYM/60wqXgxmiDHb6AU74LspVXzfkipaSZlOYYu8Z3uy
 w1xYCaEps5juCvRibz5w1tZibnezAgNpVX5mYJis00dvvI0nwjZG423o7LsnAVWeC+bF
 M2UxR3LU1Bg9w1cIf4juX1owQsneXxJdwHjncl+teA77WFOP/G966Cvn3BAc4VWoB1tm
 GguBojP0vjrfaV9+UKCBkyu3DbTS9s7HdbvRdWbs+UKBahfJz8bZLsjfvo4xtuGccGhe
 j+ri6sEwXf/snu3olKJTMuW94HEOBXmmEioucmvMByOD95Ik6peY/gVQd/jlXyKDVAtL
 PX6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVV0S2/0Rb/cMtW28GYXUwSPaZmt3SpR3uvuGfjDsRsWMT7tnMQjgwdyt4vlCjJHAVLJbdrmnZ/siPtk+fE6Y2eKtkrwmRNwD+ZaEnDgXwSpjHD+bxETZvC
X-Gm-Message-State: AOJu0YzFhB/rsww5uqP+ixjjp8O/UfdM9BYxK08Ommmu+PXbXRctEVGg
 Z4Bobk80R2AzUgR/0/x0LoMMiCjAykHW5TyhgkakdCIh8YNfiiEOaQkmrAyAomVXFlYTX70xBZT
 9r43zV5LioebMBqR366uZ0+HiC3xTIfng5zBRqQ==
X-Google-Smtp-Source: AGHT+IHzjYx5u+Am4EzQhN6aMsFTdxF/7ehGqP9AXe12JTbN0HclFOy9oE6Q1Tva+ZRKMaaQSSepEoCeBcfLH2AuW+A=
X-Received: by 2002:a25:b191:0:b0:dcd:b034:b504 with SMTP id
 h17-20020a25b191000000b00dcdb034b504mr9487652ybj.27.1712052982018; Tue, 02
 Apr 2024 03:16:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
 <CAPDyKFpuKadPQv6+61C2pE4x4FE-DUC5W6WCCPu9Nb2DnDB56g@mail.gmail.com>
 <ZgWZDtNU4tCwqyeu@slm.duckdns.org>
In-Reply-To: <ZgWZDtNU4tCwqyeu@slm.duckdns.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 2 Apr 2024 12:15:45 +0200
Message-ID: <CAPDyKFp5KET0HR+8MwO4cf0O6W2kyFqHoKcVf5jbgBuLuQUcFA@mail.gmail.com>
To: Tejun Heo <tj@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 28 Mar 2024 at 17:21,
 Tejun Heo <tj@kernel.org> wrote:
 > > Hello, > > On Thu, Mar 28, 2024 at 01:53:25PM +0100, Ulf Hansson wrote:
 > > At this point we have suggested to drivers to switch to u [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rrbBw-0001dP-H5
Subject: Re: [Openipmi-developer] [PATCH 9/9] mmc: Convert from tasklet to
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
Cc: imx@lists.linux.dev, linux-hyperv@vger.kernel.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-usb@vger.kernel.org,
 HaraldWelte@viatech.com, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, maintainers@bluecherrydvr.com,
 peter.ujfalusi@gmail.com, manivannan.sadhasivam@linaro.org,
 linux-riscv@lists.infradead.org, kys@microsoft.com, robert.jarzmik@free.fr,
 haijie1@huawei.com, linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
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
 haojian.zhuang@gmail.com, mirq-linux@rere.qmqm.pl,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 Allen Pais <apais@linux.microsoft.com>, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, sbranden@broadcom.com,
 logang@deltatee.com, andersson@kernel.org, marcan@marcan.st,
 haiyangz@microsoft.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 dmaengine@vger.kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 28 Mar 2024 at 17:21, Tejun Heo <tj@kernel.org> wrote:
>
> Hello,
>
> On Thu, Mar 28, 2024 at 01:53:25PM +0100, Ulf Hansson wrote:
> > At this point we have suggested to drivers to switch to use threaded
> > irq handlers (and regular work queues if needed too). That said,
> > what's the benefit of using the BH work queue?
>
> BH workqueues should behave about the same as tasklets which have more
> limited interface and is subtly broken in an expensive-to-fix way (around
> freeing in-flight work item), so the plan is to replace tasklets with BH
> workqueues and remove tasklets from the kernel.

Seems like a good approach!

>
> The [dis]advantages of BH workqueues over threaded IRQs or regular threaded
> workqueues are the same as when you compare them to tasklets. No thread
> switching overhead, so latencies will be a bit tighter. Wheteher that
> actually matters really depends on the use case. Here, the biggest advantage
> is that it's mostly interchangeable with tasklets and can thus be swapped
> easily.

Right, thanks for clarifying!

However, the main question is then - if/when it makes sense to use the
BH workqueue for an mmc host driver. Unless there are some HW
limitations, a threaded irq handler should be sufficient, I think.

That said, moving to threaded irq handlers is a different topic and
doesn't prevent us from moving to BH workqueues as it seems like a
step in the right direction.

Kind regards
Uffe


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

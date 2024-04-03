Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 176DB89757D
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 18:44:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rs3il-0000OP-UE;
	Wed, 03 Apr 2024 16:44:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rs3ij-0000OG-Ta
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 16:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Aej6QFoETxeFvbQm8/sOYYAdEcWAnghw/7Ynm8n0ucQ=; b=Tdl8UnFCFUC9hu3Ycrm/7Be9Po
 KB27YmIkARJWELFiC/eYVOp3OGPIvH4HvSQJOS16kwTVWeoPD+X9pnbOkuk3z7eKoN6jCwb0nymnj
 SyGe9VUCg/8qy5ZtBaHDSfUrpZ65EFQCU/56voo7H2G1RSRPY8ahUMu0rcriffaN1SAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Aej6QFoETxeFvbQm8/sOYYAdEcWAnghw/7Ynm8n0ucQ=; b=fEeezQBdOxhwN0IEh2OsDVy+0O
 qJEPTsOMtK6P/KRhx7Ogd0fKSCLC4DHibp75cQoPJygNLDTbK6bDT7myVGLwknh9j2O+dS+rd37RN
 gSs/ajMX5FujTed3zn721XQjsWcut/ta5UKB0LBCVeG/uj2QuqHlH/+eaqcEITnXUf9A=;
Received: from mail-vk1-f178.google.com ([209.85.221.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rs3ij-0005HI-69 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 16:44:17 +0000
Received: by mail-vk1-f178.google.com with SMTP id
 71dfb90a1353d-4d44216ea59so2795e0c.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Apr 2024 09:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712162651; x=1712767451; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Aej6QFoETxeFvbQm8/sOYYAdEcWAnghw/7Ynm8n0ucQ=;
 b=WukTLm46Sw8wxSSGxwEk/Ri3wOq+RIvOhRbINTwVqD4L3tLntTtM0eBdvm3BJ/eJFz
 UxbKi1bQp+KMhoInGtpC3M7d01AlaPw+TCnJXJ9rbrqc+sHoBcOkWZR+P4130aq610Gu
 8ysmqvfU5N47HDzRApf4rJljDqMUoC+KeHcabmFGBfR7E7gSksUdou+qFsaYk4z7W0Pa
 ea2LfUgWGqrgETrgrG4OJrOKJrXNVdUJtY3XwU/8xab9vhsNFFDq5X/UvTKGv0EtavfZ
 G7oUPOxDlHoLXy7RiMfapEr/5eBJx9UWyKG7pQk+5cWz9aL1eMCTWzuNzl7QB1GnJJ2C
 9L4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712162651; x=1712767451;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Aej6QFoETxeFvbQm8/sOYYAdEcWAnghw/7Ynm8n0ucQ=;
 b=em5+uHoPB5C1k1G79/Ynfuj6XRGMDOr6l2T1lu5/9Uu1cBK7VcIP3i9Ibm7FONEbVe
 iyWs5Xb0Hbm59xFRhEzI0lT062tAvcsUGWEAp8ZZLN5KDBRng2yRs8ANTIbmN9SKpu5b
 53cBVpRpTAEqrCp7J2mvckFaV51b80GKx20Pn5gPMziRfD/ZaE0HKid73DRsuRYAXYey
 qQsfLQXMSmskXJVNWQ3U0CQwflUDkzWtSm7Xlf4QS/gHKZatahrcajReXu79a4FxQAxv
 dojAlrF6w4ZPHZ4ZBavTgUNuPAwsb8TsS0Je1eF97T9W95BEYCsCbMSENCR3g8Yu9rdw
 yN3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzk/iFVcOoOE4n9gQhLyJ0C4vvXmWjQLRbTvK081Z8Vnw+PSVFfkZGf483gfOXW8IBaPoV23ZK5jLsVyEcKS5/Gp3G/xLtdxqABuAqgA/KIdANtW8z9AKD
X-Gm-Message-State: AOJu0YzG0eQBo2I8JT41qxvw0TmcwG65hVd5GnC64cvNkzXhuMznbz3P
 7MjbcEj6cmL17eDIGWyYB/OpAkBlZF6fVOdpLD7Rlfjag2WEckbVhzxZjSgD9mLDNwQ0JFAUZ5z
 8jF3/5CwGxnXG3A2OaM3OzytldGU=
X-Google-Smtp-Source: AGHT+IFEFFEcpcdQfCxRWJYlDuuUETZ0sWBciDlGUMCvLnJmEBIY1oP87nAaJSL5QQDatxb4oTnFcly4MrzzQ8OrF5o=
X-Received: by 2002:a05:6122:499a:b0:4d3:b326:5ae8 with SMTP id
 ex26-20020a056122499a00b004d3b3265ae8mr10815788vkb.14.1712162651582; Wed, 03
 Apr 2024 09:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-2-apais@linux.microsoft.com>
In-Reply-To: <20240327160314.9982-2-apais@linux.microsoft.com>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 3 Apr 2024 09:43:57 -0700
Message-ID: <CAOMdWSLavg27YZgnfE2QHjO=4RNmFx_7veAURaPG_=qWX=KMVA@mail.gmail.com>
To: Allen Pais <apais@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > The only generic interface to execute asynchronously in
 the BH context is > tasklet; however, it's marked deprecated and has some
 design flaws. To > replace tasklets, BH workqueue support was recent [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.178 listed in list.dnswl.org]
X-Headers-End: 1rs3ij-0005HI-69
Subject: Re: [Openipmi-developer] [PATCH 1/9] hyperv: Convert from tasklet
 to BH workqueue
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
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 sbranden@broadcom.com, logang@deltatee.com, andersson@kernel.org,
 marcan@marcan.st, haiyangz@microsoft.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
>
> This patch converts drivers/hv/* from tasklet to BH workqueue.
>
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  drivers/hv/channel.c      |  8 ++++----
>  drivers/hv/channel_mgmt.c |  5 ++---
>  drivers/hv/connection.c   |  9 +++++----
>  drivers/hv/hv.c           |  3 +--
>  drivers/hv/hv_balloon.c   |  4 ++--
>  drivers/hv/hv_fcopy.c     |  8 ++++----
>  drivers/hv/hv_kvp.c       |  8 ++++----
>  drivers/hv/hv_snapshot.c  |  8 ++++----
>  drivers/hv/hyperv_vmbus.h |  9 +++++----
>  drivers/hv/vmbus_drv.c    | 19 ++++++++++---------
>  include/linux/hyperv.h    |  2 +-
>  11 files changed, 42 insertions(+), 41 deletions(-)

Wei,

 I need to send out a v2 as I did not include the second patch that
updates drivers/pci/controller/pci-hyperv.c

Thanks.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

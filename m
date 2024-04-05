Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37395899D44
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Apr 2024 14:43:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rsius-0006WH-Jx;
	Fri, 05 Apr 2024 12:43:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mirq-linux@rere.qmqm.pl>) id 1rsgGH-0006lq-5h
 for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Apr 2024 09:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=roPWxbLccZER+vBGVJyQfVpEx9mdSzd/kyTN65Tprig=; b=DFOQfpTIh6xoyebtTFo4dUHWqc
 0riV77zYKUQ+WYpqFaVYwro0VUrnzcJHoRhRepmGtIEeHLFDZbI6zntfpRIr9TeC5uK4Nd2bbeuSV
 ippIhqd+xKi2Qh0OkF33ZTf3ayMxPB/Z9Gg3MG4Y7ybbsLRjW3ZGiBUeGA94tZ8m1GQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=roPWxbLccZER+vBGVJyQfVpEx9mdSzd/kyTN65Tprig=; b=incVv+GPYt4fKPjcQl8jYHh6aP
 mQ8bdzGKtf9OA96wR4eF4pbrBmfwCjY3oA7aQ1zgg6cvvALvwr1T2GcwYRXbrKgrq2wELW7z0yvE9
 jWMj8Ocm8KPP4nYvslFo/uK3veARS8blMWQyIZbAn1f3ndyV232zFqseLKNSNADYuVIY=;
Received: from rere.qmqm.pl ([91.227.64.183])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rsgGG-0003qx-OE for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Apr 2024 09:53:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1712309337; bh=gui0f6MViE5zSAEEOcDKHdPoDszSctiaYWprNP7GSNc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZcrcoLqsz/zzlMruWf44PYk75DueBejOUyr1Eh31EyaZcoY7ODel3t0vFK51sQutC
 YY7dBqw6x5FiEghmAZFtz/zTJMGq5GtkEocuVfbQcN9BDPuRIei5HZ4DdjLpHxZ7+6
 E7lgHaOaQ5/+P2XOh5i4UPTyYivuDu5pF+wIovDfOhmC0jyS7Po0jdQpgN6Tw+kWcU
 BR21bYeWeQT2EX7dHW/mtmIf4RbdkqX5exTxh2367mA4o2zBmZSc7BFV4XrNkiEptZ
 Q5SBD2Ru9xBFkYUfXpcQGRwkKRKwaEBGta6Gar0WuqKpV+3lBKaNoDOSXQIouXFRPP
 Bq/roRR1X1cQQ==
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 4V9tTX48kvz8B;
 Fri,  5 Apr 2024 11:28:48 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.3 at mail
Date: Fri, 5 Apr 2024 11:28:47 +0200
To: Allen Pais <apais@linux.microsoft.com>
Message-ID: <Zg_ET2XmZM_Id_Ad@qmqm.qmqm.pl>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327160314.9982-10-apais@linux.microsoft.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 27, 2024 at 04:03:14PM +0000, Allen Pais wrote:
 > The only generic interface to execute asynchronously in the BH context
 is > tasklet; however, it's marked deprecated and has some design f [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rsgGG-0003qx-OE
X-Mailman-Approved-At: Fri, 05 Apr 2024 12:43:33 +0000
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
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
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
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, keescook@chromium.org,
 oakad@yahoo.com, sven@svenpeter.dev, rjui@broadcom.com, s.hauer@pengutronix.de,
 sean.wang@mediatek.com, linux-actions@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, haojian.zhuang@gmail.com, brucechang@via.com.tw,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, baolin.wang@linux.alibaba.com,
 matthias.bgg@gmail.com, openipmi-developer@lists.sourceforge.net,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, sbranden@broadcom.com,
 logang@deltatee.com, andersson@kernel.org, marcan@marcan.st,
 haiyangz@microsoft.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 27, 2024 at 04:03:14PM +0000, Allen Pais wrote:
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
> =

> This patch converts drivers/infiniband/* from tasklet to BH workqueue.
> =

> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> =

> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
[...]
>  drivers/mmc/host/cb710-mmc.c                  | 15 ++--
>  drivers/mmc/host/cb710-mmc.h                  |  3 +-
[...]

Acked-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

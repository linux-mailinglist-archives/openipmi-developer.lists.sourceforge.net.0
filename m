Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DA98D8404
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Jun 2024 15:32:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sE7nS-0003ct-2J;
	Mon, 03 Jun 2024 13:32:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=877ec15a9=Aubin.Constans@microchip.com>)
 id 1sE7DX-00006Z-5O for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Jun 2024 12:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IIvfTbGo1kzawCFnZh38qcrPfM+Vjo+5JerHBZYjZgY=; b=GN30rLpCZRckijQiYea60vaCf+
 LECrRSQyoVTboTnqrXkHQCWDhLRNQr1MS/fojFgWS003bWuzMn80d6LOAN+UgH+yLSkKgaF5sS48+
 rRXDMEPlPKaDihNksLfW3/WiW8pIuH2MbVt4cOM8Y4xdlr7uRoAREM1VezeSsxz+bG+c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IIvfTbGo1kzawCFnZh38qcrPfM+Vjo+5JerHBZYjZgY=; b=ULgCCCxEvQtWWSMaRcWa1XEVPF
 o18ywz9QracjUDftnIbvtXG2QWNAWq2Q0f8KlLU8kLa4lISXXlxYx3wmbAH7MXWFsE0Y4muT7yf1g
 mQAu+HBNts8keeWryIMT/Pr3mnVDnWsjDx58F5o61RIdKJpKFWbzKX3DVAuCxUhXH8Wk=;
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sE7DX-0004Xl-BW for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Jun 2024 12:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1717419314; x=1748955314;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LEM9nLCZweC6fzBGd3LiqBJyI0EVR5DWYNV+RHxhfJc=;
 b=Kt8Ln8o46j/CMuyxotp8Oc5dIU9FgYscKzlE54mPEvdD/7vrqJhkxF51
 QOmQQYzt6lKdqRNImx9PCqv+391bjeer2HbcdgFJDAU4E7PPRjnZae8Pk
 4P+LjwbL4xSdv6kyGcjMZsAa61Oie0u/Nku8+m6CQnIwobRvZNPC2CFww
 B+/OeWd+WLH8/cMJq2AjypXvFcF4/qmmYyHxD3wVvu6UPwWHOSz6ANLTp
 wTJLelo/SkVXGGuFu2Ig/h94NpowiDRx53bIzIufo/35IcZYsEnP1cN/7
 Pq69zQLBZ97alcYGRAzWssMojNMQNS+y1QsBf64HbFgvKoUPVEWR1iVHA w==;
X-CSE-ConnectionGUID: mGTV6IY0SjuqO4B8d/I3Zg==
X-CSE-MsgGUID: cs2mH/dwScqctcaN/BguNA==
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="194291692"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 03 Jun 2024 05:39:11 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 3 Jun 2024 05:38:36 -0700
Received: from [10.159.227.221] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 3 Jun 2024 05:38:23 -0700
Message-ID: <7e618af0-51a7-4941-a386-0ac68c66d358@microchip.com>
Date: Mon, 3 Jun 2024 14:38:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Allen Pais <apais@linux.microsoft.com>, <linux-kernel@vger.kernel.org>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
Content-Language: en-US, fr
In-Reply-To: <20240327160314.9982-10-apais@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 27/03/2024 17:03, Allen Pais wrote: > EXTERNAL EMAIL: Do
 not click links or open attachments unless you know the content is safe >
 > The only generic interface to execute asynchronously in the BH c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [68.232.154.123 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [68.232.154.123 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sE7DX-0004Xl-BW
X-Mailman-Approved-At: Mon, 03 Jun 2024 13:32:20 +0000
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
From: Aubin Constans via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Aubin Constans <aubin.constans@microchip.com>
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, linus.walleij@linaro.org, Frank.Li@nxp.com,
 linux-hyperv@vger.kernel.org, HaraldWelte@viatech.com, paul@crapouillou.net,
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
 pierre@ossman.eu, linux-usb@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
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
 marcan@marcan.st, haiyangz@microsoft.com, linux-mips@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 27/03/2024 17:03, Allen Pais wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
> 
> This patch converts drivers/infiniband/* from tasklet to BH workqueue.
> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>   drivers/mmc/host/atmel-mci.c                  | 35 ++++-----
[...]

For atmel-mci, judging from a few simple tests, performance is preserved.
E.g. writing to a SD Card on the SAMA5D3-Xplained board:
time dd if=/dev/zero of=/opt/_del_me bs=4k count=64k

      Base 6.9.0 : 0.07user 5.05system 0:18.92elapsed 27%CPU
   Patched 6.9.0+: 0.12user 4.92system 0:18.76elapsed 26%CPU

However, please resolve what checkpatch is complaining about:
scripts/checkpatch.pl --strict 
PATCH-9-9-mmc-Convert-from-tasklet-to-BH-workqueue.mbox

   WARNING: please, no space before tabs
   #72: FILE: drivers/mmc/host/atmel-mci.c:367:
   +^Istruct work_struct ^Iwork;$

Same as discussions on the USB patch[1] and others in this series, I am 
also in favour of "workqueue" or similar in the comments, rather than 
just "work".

Apart from that:
Tested-by: Aubin Constans <aubin.constans@microchip.com>
Acked-by: Aubin Constans <aubin.constans@microchip.com>

Thanks.

[1]: 
https://lore.kernel.org/linux-mmc/CAOMdWSLipPfm3OZTpjZz4uF4M+E_8QAoTeMcKBXawLnkTQx6Jg@mail.gmail.com/


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

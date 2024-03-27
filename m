Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1B288ECB0
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 18:29:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpX50-0007A4-Dz;
	Wed, 27 Mar 2024 17:28:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duncan.sands@free.fr>) id 1rpW2c-0005ZS-4D
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AL90OeLN6HBr4p5W0lhhAZx03UxnubeNziLOtdV4E9M=; b=BtzpctEg2Rp4zcjALJbX4Bbh4b
 wFyTVVJ5PTYuKPn9HTuWsyObLRwLoqU6XJ5l5WluOvz980jnkXugyMZiN+WRfa8Mj1sApaAfOq9Bd
 OLVfeT77i5TCvILM4jKuNf4h/7tB4pTWNiq8dI6Vo+kwh6fanzj7K8/ChseqLiONDKBo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AL90OeLN6HBr4p5W0lhhAZx03UxnubeNziLOtdV4E9M=; b=jQJjBvQbsxBnSTThDH+wz925qs
 eNE+AFhghxVUVkby+ouCmXv9pIJVhs0pLp31QG5NcPhn6GDucFYHW1ycpD77DPmUf6cVAiNC5sYzS
 0FxAXnxUWFNIsYYtmNhd+3nSuaykLPdydaqkU3A9mRUd1jRL7w/1edwW4/Rj/Gwttnus=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpW2X-00058T-4E for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:22:18 +0000
Received: from [IPV6:2a01:e0a:255:1000:f49a:79c4:c3c6:eaf3] (unknown
 [IPv6:2a01:e0a:255:1000:f49a:79c4:c3c6:eaf3])
 (Authenticated sender: duncan.sands@free.fr)
 by smtp5-g21.free.fr (Postfix) with ESMTPSA id A3A9F60142;
 Wed, 27 Mar 2024 17:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
 s=smtp-20201208; t=1711556526;
 bh=g9NIYWY7Zqq4Jpe3GVuphoABvUpR98WMNlTO/PqC+cM=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=vSMCQaVHDvOS+MJTVx5PjO8YOXxmIEoXqqAuvBYuRC535uirpZWCAg3Zcduu9rDtt
 KXKCxUyreW9ES5/mQaKWuQmfTpoSpYf8IwCcPc988GMFZvS+1wbAKCcOjbSk3mXiD9
 ZK8Hamum4SVmsMBE1c9pxQwBG+dsyo12O4SxF8j/IiVpKDUrPYQJdtKDuV/HWRo3xL
 PYIWjDHKv6Iwt5jWnepwy1J7Y+fjiF4JTHXVaKfZ4ukUUftUNKj+3Aem3Jcxh8PUFu
 tZQKCHeE4q+71+QXSA4TwBR2eiNJVHnD/WyXCPKNPqsgcwl7VuDNvLoWg/63fz6oE5
 pvkLMrw2O9NMA==
Message-ID: <7297be25-a3c8-4e8b-9a80-ff720ccddc90@free.fr>
Date: Wed, 27 Mar 2024 17:20:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Allen Pais <apais@linux.microsoft.com>, linux-kernel@vger.kernel.org
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-5-apais@linux.microsoft.com>
Content-Language: en-GB
From: Duncan Sands <duncan.sands@free.fr>
In-Reply-To: <20240327160314.9982-5-apais@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Allen,
 the usbatm bits look very reasonable to me. Unfortunately
 I don't have the hardware to test any more. Still,
 for what it's worth: Signed-off-by: Duncan Sands 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.27.42.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duncan.sands[at]free.fr]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rpW2X-00058T-4E
X-Mailman-Approved-At: Wed, 27 Mar 2024 17:28:46 +0000
Subject: Re: [Openipmi-developer] [PATCH 4/9] USB: Convert from tasklet to
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 hayashi.kunihiko@socionext.com, linux-mmc@vger.kernel.org,
 aubin.constans@microchip.com, linus.walleij@linaro.org, Frank.Li@nxp.com,
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

Hi Allen, the usbatm bits look very reasonable to me.  Unfortunately I don't 
have the hardware to test any more.  Still, for what it's worth:

Signed-off-by: Duncan Sands <duncan.sands@free.fr>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

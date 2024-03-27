Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7670988EFFF
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 21:18:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpZjJ-0002GJ-GT;
	Wed, 27 Mar 2024 20:18:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jernej.skrabec@gmail.com>) id 1rpZ4F-0007Hp-CW
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 19:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aojaArSnA0JfedDto4elyer8YODIKcUTNNFpLzMMgW8=; b=NBtX9dsCDn/2XRL6Dq46qrH9A1
 ahqVOYf5fHkIDZdt1Et76bjGoo2KDmTVtdcetNID8gDJJNYvT6z6a2w/G5PeLvlufGCqdNe5W7YPb
 uaKks0tbUc0UzShHsrjh8s/99b+ZLeNr90tKi+m+xEOhe+OJKyZMSs0JShXUz5dH3vGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aojaArSnA0JfedDto4elyer8YODIKcUTNNFpLzMMgW8=; b=Ju/9igoihVbVZWE82xNLaAJBrj
 eit/Oai+6DVWYuAeR2MzvBsypR9c0jUr/x5AXsl0+SpqpVgs+xZDZtBl3+iLDcdNVYTw7iNLh87+o
 1C22bZUe4wMo97LZUTea8eM/fMZ1dJb/mLcCAm940D+zNVaulVgJNf7h4PgB+xbYIma0=;
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpZ4E-0000wL-QU for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 19:36:11 +0000
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-a46ea03c2a5so42697666b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 27 Mar 2024 12:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711568159; x=1712172959; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aojaArSnA0JfedDto4elyer8YODIKcUTNNFpLzMMgW8=;
 b=A03mob/hStqaLdg+HXWP5doaVcC1AB5NHl3e7D2uX/WsyB28ws+pc7DXz7PAsCH8NE
 XlUgQx0lk2q1DuHDTT2Ci81kR8ZVwiKllrnFEd3qYIc1/VH3kN0tmyHpZda9/Nwt8ef6
 XmFyFLDd++OImB6vNAGmuwmDc4pvJE2DpmXys4Ik/SPjOHmdwGSLA9b0gti7ATMOl2UR
 gszNzTvBFnIq3m3UW9uW1kwLs/4yZFMwBjDCGvUBINH6MZF32abfMl4L8t2Lh3CvtJRw
 wt+/d04AgGiTomijH3AQIM+bhZg4OzLlh47OSjsfDXzQLfcPpOUjk24ziLU7qTAsT5XP
 rQCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711568159; x=1712172959;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aojaArSnA0JfedDto4elyer8YODIKcUTNNFpLzMMgW8=;
 b=VSn8Q5FzAUgjHt3BpVhvdAY7O8zzdZfZz+DVR81QorjvS3MZbR7WyNidso7QpKSGvn
 6QBvJimc37yq8lyGJbDFU6d0tvFir40zlZdR1EjefXNtbWhy+hhrEhMYF/HCUhevezhO
 EEhCL9dPCiPEWOALlzfrZepJEtZO6RarvH0GHb0IqXXHQSgGLg7dhpLkat3gjKbjStoj
 +sgtiArcUri5M5dTzLIg0wMVy+Rc266OfnHuIcdf36pxoWK9HIfzTQqnq8cia0CC+dRO
 nNtzV1OxeQrxMVtfdGTgaNmVVRLRrBOPrw5QA7bSIWTAWZ6ZGVtJZlz9IiEgygxQ9X0s
 g+bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/xu0vuEqCRsfrPsoTn0iOdcuIyp3eIOxH6NYtgqe0AzTFNKQPtIyQY+WmlB21GbwPifDLVFfy3s5WFULSn52id4M0EggroccveVCytVitjZ7SwnlveXEF
X-Gm-Message-State: AOJu0Yyl6C75NwMTnaHYaneh8y9EibI1KRUtphCPIqGrWmeCc1l0ZF0F
 6EjPQl3pB5uOhqrBOTwLtqaXK56aB1Le+vbp1sGXunO40Wuxh3Fu
X-Google-Smtp-Source: AGHT+IHWYCsKCZfCKe9WJ0A8h2jBWKCzprPvh9Stt4hH84aJN1DmeskwZihR1IueuTRTWs9wYxpP6Q==
X-Received: by 2002:a17:906:119a:b0:a47:3766:cfec with SMTP id
 n26-20020a170906119a00b00a473766cfecmr235001eja.9.1711568159337; 
 Wed, 27 Mar 2024 12:35:59 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net.
 [86.58.6.171]) by smtp.gmail.com with ESMTPSA id
 j24-20020a17090643d800b00a4672fb2a03sm5858783ejn.10.2024.03.27.12.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Mar 2024 12:35:58 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-kernel@vger.kernel.org, Allen Pais <apais@linux.microsoft.com>
Date: Wed, 27 Mar 2024 20:35:54 +0100
Message-ID: <9252961.CDJkKcVGEf@jernej-laptop>
In-Reply-To: <20240327160314.9982-10-apais@linux.microsoft.com>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dne sreda,
 27. marec 2024 ob 17:03:14 CET je Allen Pais napisal(a):
 > The only generic interface to execute asynchronously in the BH context
 is > tasklet; however, it's marked deprecated and has some [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.53 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rpZ4E-0000wL-QU
X-Mailman-Approved-At: Wed, 27 Mar 2024 20:18:36 +0000
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 HaraldWelte@viatech.com, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, maintainers@bluecherrydvr.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, peter.ujfalusi@gmail.com,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Dne sreda, 27. marec 2024 ob 17:03:14 CET je Allen Pais napisal(a):
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
> 
> This patch converts drivers/infiniband/* from tasklet to BH workqueue.

infiniband -> mmc

Best regards,
Jernej

> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>





_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

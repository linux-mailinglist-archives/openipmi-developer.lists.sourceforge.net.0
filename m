Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FA08904EF
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 17:21:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpsVh-00010h-1B;
	Thu, 28 Mar 2024 16:21:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <htejun@gmail.com>) id 1rpsVf-00010b-Kv
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 16:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TpQlnbUKf5vfOk3TpOVHNGMqh00k5XUuxEvlHT+naYc=; b=Ly7AwgLoictFJpBzepX2Y8gtop
 91Zn/CKpij3H2Xvi0KVA8J4CpcjLIKotRaOnVNQnBlYgdrPFe86fvk1FXssqWr+G3SgZ5YWO6Xcwt
 HDXAlK3jRK3ZXE0qR47TBUkxBvxZJ7DGkhvTyOa2TVXKfZ4hGBOXSuodkYho6/q94+fg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TpQlnbUKf5vfOk3TpOVHNGMqh00k5XUuxEvlHT+naYc=; b=EnQC9Dgv17eA1Tr75Azbj2b0gw
 DvwtGaQ4ihJaeU0+NaJeYrrR4EuA2HbEDK+w/POlAhVhckDGEeOROHjqsyozshD4PyO0CCtCqUXzW
 BSyVHcEMVRuC3UGRX2KywMeKmDFU1Zti/xS7SttpiP8vmfm+6rjt+m4BaRMLjY+JvaG4=;
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpsVe-0007vp-OJ for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 16:21:47 +0000
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-5d81b08d6f2so807320a12.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 09:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711642896; x=1712247696; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=TpQlnbUKf5vfOk3TpOVHNGMqh00k5XUuxEvlHT+naYc=;
 b=KUFbu487ppek1YRVgxj/OYwtyZc7X7i2Ul0Aw3MwhwmrrIyX98fcnrAbq+PxXw4AnE
 Hdr1cT2QeHtCxy1taQTw+QZoXtcJGKeFi3gTOEMSyLFE98h/I/BGMW9y/SqGFqHyc638
 pYoIRMdNO4vJgoFE2w3vx0R2EF36bbncfbW9qW2JhYTqUktyFFgq94PH6stA1kQayklY
 6hp+kJJpW3jSncEbnjQgzZ0Vkyki9BfQQufkuxN/geARYNVvH7B7fPatGKswcIJ8AAL3
 Jze1hVLdCmTwh07eRrmYGL1rTgHZHhD9497sxboMyRRyMlfIzplOSEwAbsaD7YhLbwxs
 ES5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711642896; x=1712247696;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TpQlnbUKf5vfOk3TpOVHNGMqh00k5XUuxEvlHT+naYc=;
 b=DHdx/o2Z/0BNz2blPy9alntPoG9rMUT/ghxXKTCzECj+NhtE0CTTvw7UTWs9gXQOfw
 jbvnh0FW1deaBqlvV/98sClw2uLruqq/E7Y/14EKJml597Vw+licR1w9Ywu40t4T7s8L
 le4Bm5YSOct+1MfkEn8pwm8lF2H/9GNbauJFyrPnWJPp9svR0TbBatMV4emnR9UHY940
 SvhdXIlOqddB9X/PbBPaN/wkK3IT767GHGwUYtSdP90FBNOC0pFXY72sommAnOlySbP3
 JLM805rySBksCwRs4HN2Ml2SfNR+z0Yb4SgXfaERk7GoMcyWx+iIPS8dQeae26ERnIj5
 0gSA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/JRoiZUJDvflyRLwI7wD6yRnagarjFUZsOb8VQjU9CDcecMEbD7SWmX2IyV8w0gGZOVX4ciMhvntZJF3i30xNSgBBzXuJMIEW1DmR95gGtcOoc53mZLMh
X-Gm-Message-State: AOJu0YxypUPpnFoXXI+uaLN6nudvnSwPSz1JJM3fxK8YI6OhOhnUyuI1
 8LCo8vxPLSMFAOtl2leKqJnUasAfwM1cQDzsgw38YHHwelEdbrl1
X-Google-Smtp-Source: AGHT+IHNLtSIfLiMjPgdNbH73n29Rqo4mQsh/oBERN464FH6NwbPkAtXL24hv7Aec7RU+H+HqkGb1w==
X-Received: by 2002:a05:6a20:7495:b0:1a5:7308:3297 with SMTP id
 p21-20020a056a20749500b001a573083297mr1591044pzd.0.1711642896210; 
 Thu, 28 Mar 2024 09:21:36 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::5:4d4e])
 by smtp.gmail.com with ESMTPSA id
 fd37-20020a056a002ea500b006eab6ac1f83sm1576815pfb.0.2024.03.28.09.21.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Mar 2024 09:21:35 -0700 (PDT)
Date: Thu, 28 Mar 2024 06:21:34 -1000
From: Tejun Heo <tj@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Message-ID: <ZgWZDtNU4tCwqyeu@slm.duckdns.org>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
 <CAPDyKFpuKadPQv6+61C2pE4x4FE-DUC5W6WCCPu9Nb2DnDB56g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpuKadPQv6+61C2pE4x4FE-DUC5W6WCCPu9Nb2DnDB56g@mail.gmail.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, On Thu, Mar 28, 2024 at 01:53:25PM +0100, Ulf Hansson
 wrote: > At this point we have suggested to drivers to switch to use threaded
 > irq handlers (and regular work queues if needed too). That said, > [...]
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [htejun[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.177 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rpsVe-0007vp-OJ
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

Hello,

On Thu, Mar 28, 2024 at 01:53:25PM +0100, Ulf Hansson wrote:
> At this point we have suggested to drivers to switch to use threaded
> irq handlers (and regular work queues if needed too). That said,
> what's the benefit of using the BH work queue?

BH workqueues should behave about the same as tasklets which have more
limited interface and is subtly broken in an expensive-to-fix way (around
freeing in-flight work item), so the plan is to replace tasklets with BH
workqueues and remove tasklets from the kernel.

The [dis]advantages of BH workqueues over threaded IRQs or regular threaded
workqueues are the same as when you compare them to tasklets. No thread
switching overhead, so latencies will be a bit tighter. Wheteher that
actually matters really depends on the use case. Here, the biggest advantage
is that it's mostly interchangeable with tasklets and can thus be swapped
easily.

Thanks.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

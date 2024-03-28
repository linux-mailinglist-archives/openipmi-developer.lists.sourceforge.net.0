Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0A489097E
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 20:41:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvdC-0005tL-I6;
	Thu, 28 Mar 2024 19:41:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rpvdA-0005tE-RN
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WIYRUJlYf8k4Ww5l6bxXyNzs1Z7gSD0K+4rAhlyLzPk=; b=JsfC8lyy3pnaRZ40fvcgxfcQoY
 ON5Wkv1VJcBEgMcwEKBJntUW044+ZGHXAPat6VPpyc4+pnZWUGZTMSnLMqPKznXfPE/gKYfGcgT1c
 rxxRYA/hZlF4W7D3hrmAkDqTRoMnSUYbESVr/jpxeuo4m4jR24mF4tlNi1LevfnXGOy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WIYRUJlYf8k4Ww5l6bxXyNzs1Z7gSD0K+4rAhlyLzPk=; b=bFnCxszHkYKnLuob9/tKTGIMky
 7KLKDeKE9hp7j99H8EPee4Zsci72MlT9NjQ4+Zmk6a/aE1AYnALj26XbFO3Y5zIFlzw4lDpTXWI26
 DLeZ2I7QnvUDgAoRJpOXB1sDNdsDy1ZM0t3fkDBtp00S/xfsRGKXnJktLfoIxLVZywNg=;
Received: from mail-vk1-f176.google.com ([209.85.221.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpvdA-0004wu-DM for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:41:45 +0000
Received: by mail-vk1-f176.google.com with SMTP id
 71dfb90a1353d-4d47000f875so504706e0c.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 12:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711654894; x=1712259694; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WIYRUJlYf8k4Ww5l6bxXyNzs1Z7gSD0K+4rAhlyLzPk=;
 b=YQVFa6iGDsF/UODAGxO7G000AKiws4RThIhKpHqb1Ba7EY6/RiiIpeBXPngEpYuJtD
 7TKRE0uCaQvpD1ZeDdyHWrH2wP26PTxeS9MjAmgh3EIbFTs+ELz7O0JbT7rKWwUknhCA
 c1nTh52czXtlznrQCde0jWZgK1KMIVfDRgSxStQxMRPEUALDZiu+L4Pc7sWzv+PpGc27
 gUL6M1pEeBkFDgOBzZLPeWWkeybDPTkNdLPafU4YoHAcij7sC+ZFM7oEZ9ORYPgBA7Mb
 0a4w/nLZMbdVusdg3SEPlxr2RGFqVm14E5p0dIhknkam5JVh8W/OH2VXzB7v17RlfxMc
 c5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711654894; x=1712259694;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WIYRUJlYf8k4Ww5l6bxXyNzs1Z7gSD0K+4rAhlyLzPk=;
 b=FgaNrQ6nIjyO+KntdPLTJA5DGCf50GCv6UHg7zMFP8FUgDlcep7+SJyTAbaFTdtoYC
 VqCNubx+div5zE5bK/PWpntqVsoPyhwhi9PmP3lKYTMchQfKSwLQ2QpYkadlxF1lLIWt
 VMfLMtT46/k8RpAiznQAz+5MjkgA8iR3JD8Mt7YX3R+KzLvkLCbbf9Va0o5H/WGyDlXh
 SpGy/8B2AzzT50OyjCPkp7mhoWN4dmxgbCKKG33lryut9DirQ0K67ejcrwps2B4EMhUN
 1RITr4ylu7djlO6V5dBB6RsHM9VoNKtMxCyEcukmGjP28n5RIbOz9wOdwT8f9FFYIq4G
 zsqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXF0fNejULOt26sox/CfGxssCx66/h2xEG3Itvg3Cqf1FrAcLzRojp5AJzbVS67zqMTTiym+/fVwsU8d6Nlb9b8h/VRpW/ylLgzTLSlKp03hx8A1ObCylea
X-Gm-Message-State: AOJu0Yyb+ke7GbHLp3fJB+r9KNMeZN7L4ELsgCYUAzJnpOfNeSp75Xzl
 iAEw30/bfh9VUSq78xWJB0uhfn9Ogee7y6/sOGHc4Y4pupn0LEhMwRKaEPGtkhIwcVSswhKeH2I
 bEZN4OBJVEUFLkpisVz9I6ftH78E=
X-Google-Smtp-Source: AGHT+IF7RrkP6jmtYq8PnUCxuTgzt2Qt4CTC9MlCAHIq165hbFM88DzkJJ/z4aTnoTdb1soUmIZQWdyI4gYKg4Ogr2U=
X-Received: by 2002:a1f:ebc2:0:b0:4d3:43f8:8541 with SMTP id
 j185-20020a1febc2000000b004d343f88541mr348710vkh.1.1711654893631; Thu, 28 Mar
 2024 12:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-7-apais@linux.microsoft.com>
 <ZgRePyo2zC4A1Fp4@mail.minyard.net>
 <CAOMdWS+1AFxEqmACiBYzPHc+q0Ut6hp15tdV50JHvfVeUNCGQw@mail.gmail.com>
 <ZgXDmx1HvujsMYAR@mail.minyard.net>
In-Reply-To: <ZgXDmx1HvujsMYAR@mail.minyard.net>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 12:41:22 -0700
Message-ID: <CAOMdWS+nB5EENp_Vb=k1j77nrch5JgbZP2XYPJ2ieTja14zB0w@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > > I believe that work queues items are execute
 single-threaded
 for a work > > > queue, so this should be good. I need to test this, though.
 It may be > > > that an IPMI device can have its own wor [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [allen.lkml[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.176 listed in wl.mailspike.net]
X-Headers-End: 1rpvdA-0004wu-DM
Subject: Re: [Openipmi-developer] [PATCH 6/9] ipmi: Convert from tasklet to
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
 Allen Pais <apais@linux.microsoft.com>, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, sbranden@broadcom.com,
 logang@deltatee.com, andersson@kernel.org, marcan@marcan.st,
 haiyangz@microsoft.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> > > I believe that work queues items are execute single-threaded for a work
> > > queue, so this should be good.  I need to test this, though.  It may be
> > > that an IPMI device can have its own work queue; it may not be important
> > > to run it in bh context.
> >
> >   Fair point. Could you please let me know once you have had a chance to test
> > these changes. Meanwhile, I will work on RFC wherein IPMI will have its own
> > workqueue.
> >
> >  Thanks for taking time out to review.
>
> After looking and thinking about it a bit, a BH context is still
> probably the best for this.
>
> I have tested this patch under load and various scenarios and it seems
> to work ok.  So:
>
> Tested-by: Corey Minyard <cminyard@mvista.com>
> Acked-by: Corey Minyard <cminyard@mvista.com>
>
> Or I can take this into my tree.
>
> -corey

 Thank you very much. I think it should be okay for you to carry it into
your tree.

- Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AF0890A00
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 20:52:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpvno-0003uD-4a;
	Thu, 28 Mar 2024 19:52:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rpvnl-0003u7-IW
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YT6C4kyGaXJTnO4s5bmEmPWYlNQPKErlDo5CuGDxbV8=; b=ROPLU1hLXOPMF9dAUzrqAr7CpT
 u6Q/kU5fxn2VKDTStQ/mz+ztvX9mfkV765pJZKIVUrYpGvSS+4K0RtVMpNRMe3s2zm7UkMu60+neZ
 Xwzo1KSJ/LgSWsiwaB1fUV0DrTqVCFkGB7tNEm9KxVeOlk2kxHfw+5eDGSuYrk6vQIzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YT6C4kyGaXJTnO4s5bmEmPWYlNQPKErlDo5CuGDxbV8=; b=ZOWZbZ+bM3hLTdphXDIVdv0pgj
 pM7bRMKmYCXvG27qc0rAyoTNi7yKvlhShKoCxF1qwUlAP71tp/8Ot1Ef+qQNA8V5qhAIINcWvnHLu
 JWS2Tq52ItDdxIeGodUVoYggus1nHNcXRZ+G8AUACg2X5K42XztQv/+me6E2TjKxkUlY=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpvnh-0005jL-CL for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 19:52:41 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-6e6888358dfso641513a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 12:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711655547; x=1712260347; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YT6C4kyGaXJTnO4s5bmEmPWYlNQPKErlDo5CuGDxbV8=;
 b=ixpvsNBrgF6T9tWsDjdsf51v99N+3XpG3nIvqU2l0JikX+6/4tEQokYoa1SzybDJZW
 a4ZUu1UM4XzSyfME4Hoxa6TjWipKrAbKZ37323s7hXd54Iua9nXgfiiB9d8CZ9ThLrw2
 amf88jWx+spIcAHN3T784WIokbqsXVrsPuSMseVC13+rWSe34Qz3hfk1WX6GVRSP38Sn
 2XBUFRpE38dXT/RQxS90FF/kEsrDT7bUETTTWVKlAuo5wOg8qcnrVpBkwJTYRRUmqYv8
 DJbVmAanPS8pUaHFFNsLnt4sUPXxm18LSchfMtTOJLHUJG5LOD1IqPqqTT9b0/I8/1yh
 AcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711655547; x=1712260347;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YT6C4kyGaXJTnO4s5bmEmPWYlNQPKErlDo5CuGDxbV8=;
 b=ToCY01Sgu3ofhgKEq/3KTWEG3KGz1YlX4jPNMBRdAdG7MEmDpDeVLKluc75oeDBMjh
 vpJP/GH53A7bLnElxm4XcA1O30rA/grbbTeWbO+EVw1vN5rmkEpVJ/ZgjappHriIoNAO
 WVl5oGv8Z3KJb/59lk4Ls8+Ras7Rz9hvkHXjzTGryPLL6E52u5Wxkba/2BXLjHDRmYtE
 9/WFGnX8hQtxCtqIoQCjKsApXHfNddIyqd7ZEIOMjZfXe8BHgFlwm+uwzP9Gpc7sSb0s
 CXBN7toPBWjgpwkGLMx2EYJx6kCPqx/M9CDlY2+8tlZYg65YSvcTs+VsB0t8IQYgoe7A
 0bkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXndYzHu0xlBXz3TBmjy314U+U68Rg91kQzc5NetP/M9ZJdvFDjLyOuOAv+qj/Yf+7SOygBdqcQsgbpfvquq7+b8zVIQ0CLc3OVCaLFJ5U25CO9faBhZk/3
X-Gm-Message-State: AOJu0YzDFa1sqqxqnM4dOqOtyZd+8H1qqA79RGppGHqQuCL1mJj6uVCq
 6YLufLF9WM3zus4e/XJwm5jiDGMV8TNyeolkelsMDTag7WoeTDk=
X-Google-Smtp-Source: AGHT+IHzO114l0NerWSB89S0FuZIWvU872Dx5hTOnZas2urBgE80eNZxB2BV9A8JCj8+LYtYL67EKw==
X-Received: by 2002:a05:6870:3513:b0:22a:8e5:941 with SMTP id
 k19-20020a056870351300b0022a08e50941mr177999oah.52.1711655546921; 
 Thu, 28 Mar 2024 12:52:26 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 pd12-20020a0568717a8c00b00229f94bf403sm536320oac.19.2024.03.28.12.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Mar 2024 12:52:26 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b987:69e:202a:697a])
 by serve.minyard.net (Postfix) with ESMTPSA id 4B51A180059;
 Thu, 28 Mar 2024 19:52:25 +0000 (UTC)
Date: Thu, 28 Mar 2024 14:52:24 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen <allen.lkml@gmail.com>
Message-ID: <ZgXKeL36ckOyNpI/@mail.minyard.net>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-7-apais@linux.microsoft.com>
 <ZgRePyo2zC4A1Fp4@mail.minyard.net>
 <CAOMdWS+1AFxEqmACiBYzPHc+q0Ut6hp15tdV50JHvfVeUNCGQw@mail.gmail.com>
 <ZgXDmx1HvujsMYAR@mail.minyard.net>
 <CAOMdWS+nB5EENp_Vb=k1j77nrch5JgbZP2XYPJ2ieTja14zB0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMdWS+nB5EENp_Vb=k1j77nrch5JgbZP2XYPJ2ieTja14zB0w@mail.gmail.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 28, 2024 at 12:41:22PM -0700, Allen wrote: > >
 > > I believe that work queues items are execute single-threaded for a work
 > > > > queue, so this should be good. I need to test this, thoug [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rpvnh-0005jL-CL
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
Reply-To: minyard@acm.org
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

On Thu, Mar 28, 2024 at 12:41:22PM -0700, Allen wrote:
> > > > I believe that work queues items are execute single-threaded for a work
> > > > queue, so this should be good.  I need to test this, though.  It may be
> > > > that an IPMI device can have its own work queue; it may not be important
> > > > to run it in bh context.
> > >
> > >   Fair point. Could you please let me know once you have had a chance to test
> > > these changes. Meanwhile, I will work on RFC wherein IPMI will have its own
> > > workqueue.
> > >
> > >  Thanks for taking time out to review.
> >
> > After looking and thinking about it a bit, a BH context is still
> > probably the best for this.
> >
> > I have tested this patch under load and various scenarios and it seems
> > to work ok.  So:
> >
> > Tested-by: Corey Minyard <cminyard@mvista.com>
> > Acked-by: Corey Minyard <cminyard@mvista.com>
> >
> > Or I can take this into my tree.
> >
> > -corey
> 
>  Thank you very much. I think it should be okay for you to carry it into
> your tree.

Ok, it's in my for-next tree.  I fixed the directory reference, and I
changed all the comments where you changed "tasklet" to "work" to
instead say "workqueue".

-corey

> 
> - Allen
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

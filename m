Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B89CD296FF5
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Oct 2020 15:09:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kVwpE-0006sR-Ks; Fri, 23 Oct 2020 13:09:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <richard.weinberger@gmail.com>)
 id 1kUGZL-0003ov-3t; Sun, 18 Oct 2020 21:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=; b=FlAhluguZ2NnJq0iLCv8og/D2r
 34slfbP1//XF5mQZ8Ld84QD4jNxCe5w28cItUKo01r1ePgu5wKRL6OP5oPaciEY0ry9JGXGHdZRSg
 Vedcz48hUKRq6J4pTOrE60mFpZu23hOhcX46hOXFNtc+ntayNpTxadJ4zVRYNFS19kcA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=; b=a4wmtD2KQhwKUh3+uPqSMUnQAV
 4T/Ia7bDuWF4EiKG99n9GM3pFjon0O8yG5RX4W1V5fZ0ELVeL7mQcw8PT+lxL/WKtDkWgpRnYZph6
 K/3ZkufKgWR8L4MVl1nlqX/BBpYfFXXh0ZM9SQOMfB2ncspqMuTDoTCuPd7HEAdtGWr8=;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kUGZG-002zb1-SN; Sun, 18 Oct 2020 21:50:23 +0000
Received: by mail-qt1-f195.google.com with SMTP id j62so5026951qtd.0;
 Sun, 18 Oct 2020 14:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
 b=BT6sX70H+s8KhgIkqlKxOTyt7nLW9Zkkp/pWMqwoIwpRPwASphI99ISJJY/DrRq4YB
 tuxxuQta89p2LltScao7kwUamcV10d6qq0/0GsMri9Y5uCbzF0DQIPVBZym6oh2w8IRp
 jGv4FzahYM8UB3UvXODpIfq1ilK2uqq9Xd/9k1Vp0D25EYeZvsrsLMiSOVKbh0jHo8ly
 ZwpyiDfjYzQI7omWM6lYTXWC4WxC4zXCwovEKbG2sVh0lXA3kgHlfvQ9kncK/jS7lzXB
 WtZ4PQbPMGBo2Fvzsm14b4aTThFD0/Vsyl0CynTIq6qQwMl+W5yJA342KaaYBMt5xICG
 NkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
 b=BuvCfOtaZcTB9TsogeaM6NOaspb3UTFr6M4IQbqClByq3BTHOYf+xENKp2AMlC9Igd
 7mhNc1d1RePzS+TuREwyUDobD5YI3okoEv0C+KXxuicAa8QaKanQlep7ZJ16ITvil/H+
 8Nc9ormzsSY51bIpDvhn9NSOM+g6auFG63NSrBlwjVx8RzPw29Vqr2ivfVxixny64D/W
 KDS8BwevmyHdomsP323d4NgUIk0NGW0UBHlMQJ8PcYTIdnIAX3Ub6vIlwPTYlMl2gceh
 0uMlNAV/iFvRWLPfli0oxFPa5eu3dgT4t4nju+BENC9zSe157URobSpHBrTRDw2/oj+y
 VQPg==
X-Gm-Message-State: AOAM530p6xtcibMmWiVTbBBEpDtaRY5uJXvBTIQWKPW+q1NpqLVZVgKN
 yjaEZaM4PtKbdorZq4i71LlmmqtTgluzwj5KzUw=
X-Google-Smtp-Source: ABdhPJw59Z9ZSI7YkUnrDX/NzYUwLZIQMERPV41io/elXdvNyA/Ph+eIMdFGNAEYy/TP8jUOuq9oIUb3paHWMlURueE=
X-Received: by 2002:aed:2983:: with SMTP id o3mr12423656qtd.285.1603057812125; 
 Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 18 Oct 2020 23:50:00 +0200
Message-ID: <CAFLxGvxsHD6zvTJSHeo2gaoRQfjUPZ6M=5BirOObHFjGqnzfew@mail.gmail.com>
To: Allen Pais <allen.cryptic@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kUGZG-002zb1-SN
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:09:39 +0000
Subject: Re: [Openipmi-developer] [PATCH] arch: um: convert tasklets to use
 new tasklet_setup() API
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 Dave Airlie <airlied@linux.ie>, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Maxim Levitsky <maximlevitsky@gmail.com>, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, jassisinghbrar@gmail.com, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, kuba@kernel.org, mporter@kernel.crashing.org,
 Jeff Dike <jdike@addtoit.com>, Kees Cook <keescook@chromium.org>,
 Alex Dubov <oakad@yahoo.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input@vger.kernel.org, linux-um <linux-um@lists.infradead.org>,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, alex.bou9@gmail.com,
 stefanr@s5r6.in-berlin.de, Daniel Vetter <daniel@ffwll.ch>,
 linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 17, 2020 at 11:17 AM Allen Pais <allen.cryptic@gmail.com> wrote:
>
> From: Allen Pais <allen.lkml@gmail.com>
>
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  arch/um/drivers/vector_kern.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Anton, can you please review this patch?

-- 
Thanks,
//richard


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

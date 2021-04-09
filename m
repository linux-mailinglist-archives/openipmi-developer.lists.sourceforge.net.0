Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FCC35932D
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 05:39:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUhzC-0008BX-B9; Fri, 09 Apr 2021 03:39:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <joel.stan@gmail.com>) id 1lUhzB-0008BQ-Ck
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zWYrgmgXBOXRjVrzdgXfjhYpQ0FoUCzYmeLXCLSnYFE=; b=JsnWs3mnnKz3f1VYS5WcRVtapV
 5l8ZyAovpmzx+K4rZ98ojiaNdvzfQNwnG6jlg97QRgrgXmLNmbLd0UxQQfZRDgyRZOtrFP805z/Qn
 EiFfdBSbJeLBRLPIqM9dtGSxOdSEJ6AidqpH2iiqi/77mmfuN6zR1XIPTbLQkswFwe3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zWYrgmgXBOXRjVrzdgXfjhYpQ0FoUCzYmeLXCLSnYFE=; b=Rw6QBTkZG40E1dy+WY5L/lYtAF
 Nwi9lHJqvNEL/6DljuUDfXcJpZ4y9przpvEdoMqycIb7oU8QmBJ+IJLRwjmOrRYw4tVAXKxhfojCX
 XTMy3NkOaRbDQ/coI7Xa2/WD7UF9mUv4Wu5a9Tyc2ShkcOK/aJlSOIBBbsW5WD79kfbk=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lUhyw-0008FI-6J
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:39:09 +0000
Received: by mail-qt1-f171.google.com with SMTP id m16so2610531qtx.9
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 20:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zWYrgmgXBOXRjVrzdgXfjhYpQ0FoUCzYmeLXCLSnYFE=;
 b=jcSmnDiUo1MMc6Q3MSiXiyB7AXqJBpPE3e98RkysCl8SPty3nDcOvOcRler+dmur5d
 aMg54JUXZxIhZg03ZAR8c4WicszsfYamOPqGCL3/D+KRBdvKzAB4CjehLG05aGaqWbqE
 rpwrfWYwUuXjd2oNzh9mCifoRsFoJ+gnmN5pc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zWYrgmgXBOXRjVrzdgXfjhYpQ0FoUCzYmeLXCLSnYFE=;
 b=nXPma9NC5SFTuCgtE9y9ozQ+1AQrLrGVn0O4x4pgr4AGHXX7hMGmkVJAA9tNp7pvbm
 AqLZk2kg2II4eqWJ0SohuraN43UumEML43c0Dw1yT6iekrG+C5gOh124HmqSHzPOdJbc
 WeLxQF8LvrGihj+JSy/rx6jPsoDXjTniTxGnb/3CHDfiiAFWip+IBEPML3QWUuG7IogA
 ZCaghIWLL+Cc2aNZyEuHBHQo683iQsv7vAhz/aeqvuzlZCOlsTUjfK0NXVMpxgb/dT8X
 tg7QKeTN0ox+7ukaMOmsyiNWj3ixj6ai9DnbzKSE+NBN8lGFmJiBYE9cj0jYWHI51QeP
 6s8g==
X-Gm-Message-State: AOAM5317wMNUdnH/BVQA0SQo1+qXxdgHeMQ7p0M9kuDVU7MlAb48N2Ej
 0WeeOqv1w3hcLihuBP19fUKO3ZBVz4SlEHowmZY=
X-Google-Smtp-Source: ABdhPJy3ab4kwwpcl+l+Ds70eJmyq2Cr6Wy6ME4tEKA06FjzEJMtXRy47zcwt64rNz+2wEnTaXI69wecrdATFzf/+XE=
X-Received: by 2002:ac8:7547:: with SMTP id b7mr11274286qtr.176.1617939528484; 
 Thu, 08 Apr 2021 20:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-5-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-5-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 9 Apr 2021 03:38:36 +0000
Message-ID: <CACPK8XcFX9Ljo8K9XzhtCnTXKS0muknzrV6=SU6Wh5jJSPdNAg@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lUhyw-0008FI-6J
Subject: Re: [Openipmi-developer] [PATCH v2 05/21] soc: aspeed: Adapt to new
 LPC device tree layout
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 19 Mar 2021 at 06:28, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
>
> Add check against LPC device v2 compatible string to
> ensure that the fixed device tree layout is adopted.
> The LPC register offsets are also fixed accordingly.
>
> Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

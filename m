Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65129359315
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 05:37:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUhxS-0004to-ME; Fri, 09 Apr 2021 03:37:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1lUhxR-0004tc-I0
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8BgGBrR3Xwqw+MMg1YnlfMAUK+I10lyWE+xZkXB1ujs=; b=O4AqJAhloHQAb5NlQUuZpqDZe3
 X2Z5LlcRn5R9f2uCCqsS2ehCemb49M0dU2fZN5n9jfXuPd9eg9QI9Qa4TWpJf/nUoP9IOUi/n3YJw
 Ql0b97S4dXebxSQNumwiBMNPAYUd2esOkwXpwJpoGGROXT7/usTT1rBjAjLFF2KOsdh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8BgGBrR3Xwqw+MMg1YnlfMAUK+I10lyWE+xZkXB1ujs=; b=EDPGFFP5VBzvixf4HDCSyKoD2J
 s5hNXCK58Msnv0VMoDYqM/xFJUnikcgzTDQuZDfmrTa8z9rxiIU6Mov/hz4tp3fZcqBN13K+aa8Pp
 U6vDe1OlIe592JMnxc2JXW2v0QpB8en5d6hqE/cxcMdhaYBnl82lwJe0F3OQWV0Nrbsc=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lUhxK-0085N2-W1
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:37:21 +0000
Received: by mail-qt1-f170.google.com with SMTP id f12so3237773qtq.4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 20:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8BgGBrR3Xwqw+MMg1YnlfMAUK+I10lyWE+xZkXB1ujs=;
 b=Heia25TgE2vtvJwk4Mye9wUNtKT4LCXFpu3RTd7Litn4l6XDwm58yNf5Xo72WKG1Cb
 Pnh29PYykNQ0Leb0AVytW69/DSGu2rRRdSyPucL7QrMDZjkSbhFQ0sXFxG9k3cGgza9V
 mXSNHoDmBuqB2Dq6N7NZp/gT1iFd9YrggQtWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8BgGBrR3Xwqw+MMg1YnlfMAUK+I10lyWE+xZkXB1ujs=;
 b=ejXwiUDVmumfR7n8HQ0uEVm/uV1mgAbhcT3XZeir2xviBRXnw62eCqALLoBFZK77mF
 1UWbdmaT52XMFbtn8e4V1tn9lxiXzdsXFGX6EfUzxjYyb0cBi8F9SnwOOktrujhwAYes
 zY9OljBbXxAo7yic8OREJ3EipP3+SD9YvGBpjsaX5i0yPz4XVaySyMns+18JsMuIWgAD
 pAcGFzoK7Y1kYgCNUEcTFIGWZJqB7dxJwxQ1YI+afP/XwoZvZi4AfsiC4EfHQoXasX5T
 tpiDDWWdrksEmpiLhOveCNnkstG+HsrFuqIFW5Rx2SYawqTh2KrdAw1w4ayZPzwesWfK
 QZYw==
X-Gm-Message-State: AOAM533Kt1l/iAQ3krHp58xwwU4E5Ndk0FCtoO3hu8IgLIQaIjL7reZI
 3uEzjPZXVI7pvoGCTmQHNh0G/0nLHo003+xmU5o=
X-Google-Smtp-Source: ABdhPJxpEB1iiCw0U43cwWPFxVnBP2huZ7QxGaGC6NeOvjxLXRAa+ssU2jFErOgTTQKad2+gM3ZDkIo4Ri3biTi/Bas=
X-Received: by 2002:ac8:5f87:: with SMTP id j7mr10494309qta.135.1617939429154; 
 Thu, 08 Apr 2021 20:37:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-4-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-4-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 9 Apr 2021 03:36:57 +0000
Message-ID: <CACPK8Xfre_HriZXa10GVRvzxM51_6jkxCrXi-Ofto6cCKcLw4g@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lUhxK-0085N2-W1
Subject: Re: [Openipmi-developer] [PATCH v2 04/21] pinctrl: aspeed-g5: Adapt
 to new LPC device tree layout
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
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Joel Stanley <joel@jms.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

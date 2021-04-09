Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF25335930F
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 05:36:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUhw7-0004kU-HR; Fri, 09 Apr 2021 03:35:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1lUhw6-0004kI-7C
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VW/C+2LLet/ldR+i+V3eCTvpTJBdjFtGmR5udw1qeLQ=; b=gdHjfvMEmzx7i6okbjo60+O3tw
 y829uo0hQzFxnjYYPaac0mW/Ts1sYzwYpFX6yfnQqk8ZwMzOWFhpGdlvPdmWW66K9/Fiv0PHBMI8q
 vWoKJSsSELqH+gz6pkZ92OVmCndv9YGJHXGqAGgfsrOkT2p31bFIHFp3Zo6D3EqjYKgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VW/C+2LLet/ldR+i+V3eCTvpTJBdjFtGmR5udw1qeLQ=; b=RbAzG8saG5HgGoz0aAaUOxlZMF
 lmhj6htFl3tHG9i3fE+UkqkBkPh6l7ebRbBUns7bHTXFHjZQR1ildEsQJJmdGvFqOyGbFQ1X1sslK
 HATZjf2GNF8FA2/f3h+xQIcgVrn/2x/uwSj81XD6Myb0NTCKQgJvC+iKA8sWGhotFmW0=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lUhw1-0085Hj-1F
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:35:58 +0000
Received: by mail-qk1-f169.google.com with SMTP id g15so4588394qkl.4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 20:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VW/C+2LLet/ldR+i+V3eCTvpTJBdjFtGmR5udw1qeLQ=;
 b=kf/yhUgzKhxJK2p+6wg/izoDDT8TFZB4rkZhdAkJoNXFkTR7yODnvd33p9egVGYtph
 gbjuS+5GR0hjMGkDh2zU1fwjhgdqLPt/a/aFHME6YguBsLD7EVdtdN+p5QMtBp8FPzS0
 KrAOJQ7t3AKlSkWQfGGwRPGIXSlG6ftCpd/p4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VW/C+2LLet/ldR+i+V3eCTvpTJBdjFtGmR5udw1qeLQ=;
 b=cxZpLHk1wiKe+ckwdElDLSgHdZxMOuxzdKFNK7kCgl/R0c4M+3EMrheV2NsbyoGR33
 D3WoBRb4hRLVm7Mhwnf3C7fflkex0BmIpxY3tElXUUQj6QAlJGZSyCf8KwBKs9OWW/FH
 UUsalHfi90qxAP8rudfhs2V7tcaWDGA4Eso+PpUFBqjHYe4NRLxcdM97U9MTZu6S4lae
 VQWBj3GY2aCuhEZRKYPs18SWlngXfBLnxUhy7GT/r0x7W+DnFmaV1vFavvmW/LZX4siX
 ynppy64IiTs9Td1bKnoYc7H/v+/uRo3iEfeM189EH3U08P5Y6aZZriHcdWhj64gn8FJD
 hhCw==
X-Gm-Message-State: AOAM533BXSV2Q8gc0Frus9l5S5h90CL9LmOiXVjZhgobRmbWrARCgLme
 +GmFexXoyKbaOZiHBPrH7yTJwQZiqXUb/f8GKtI=
X-Google-Smtp-Source: ABdhPJxle9zTiCZMcHgQmCbwnJmAkb+TEoOlJ7KMtbFw35LN/7onMEAKpvQn37Vrs7E0ALx7tpeNrdmUUNmbjGlTwlo=
X-Received: by 2002:a05:620a:28c9:: with SMTP id
 l9mr11766768qkp.55.1617939347264; 
 Thu, 08 Apr 2021 20:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-3-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-3-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 9 Apr 2021 03:35:34 +0000
Message-ID: <CACPK8XfkvBA+9_WFb96oEa4F1vDPd90hG+M2Y-Ek=Xt5FUFqmQ@mail.gmail.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lUhw1-0085Hj-1F
Subject: Re: [Openipmi-developer] [PATCH v2 03/21] ipmi: kcs: aspeed: Adapt
 to new LPC DTS layout
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
 Linus Walleij <linus.walleij@linaro.org>,
 Haiyue Wang <haiyue.wang@linux.intel.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Corey Minyard <minyard@acm.org>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>,
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
> Acked-by: Haiyue Wang <haiyue.wang@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

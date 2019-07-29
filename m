Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E30F786577
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Aug 2019 17:17:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hvkAJ-0002C5-L9; Thu, 08 Aug 2019 15:17:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linus.walleij@linaro.org>) id 1hsDym-00089o-Hx
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Jul 2019 22:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WBZi/FWYMVw+6x0q1L6ySXMBwWz8l9YOs94KLfDt+sM=; b=F2kpUOQBo/a7iPUPzUvMuac4D3
 2C4O9qRXP2cZ9dyi4InqAwDDhclCy5oSFf2cdKsnwOt12fDaPJ6Cj6BQdQIUtaWYJKq18qRkpwlEz
 Md/TLXg8vBqdHjdOsy7GxFTPuQufpyAiu2nAdKRhjwXrilwOlGKbWb+Kmb5ciRiJ5T6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WBZi/FWYMVw+6x0q1L6ySXMBwWz8l9YOs94KLfDt+sM=; b=j0rFUkqCIO2bJcNr0AepslXE/C
 WQqQ5hz3dc4W+tuKJOAmLauVCuf072bWtO0ooo/AZYlTItIMMsbkBopo9ODyI1TVvVMFbcuoDV843
 cLglZH/crVCShC+87OuBOPWqxoiUbHtEI75xInapiawMWjRpvK+1ke3n8/4BzFEhvlA0=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hsDyl-003n5S-6a
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Jul 2019 22:18:52 +0000
Received: by mail-lj1-f195.google.com with SMTP id k18so60072168ljc.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Jul 2019 15:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WBZi/FWYMVw+6x0q1L6ySXMBwWz8l9YOs94KLfDt+sM=;
 b=maX1fJR459j9bTT/i/FcZluuRJjdtq45t9ua4H0lkFp2Fvu8AvbQWRaoneF4GAendq
 GGsgRy5RasAfnEje6j1sDASgB3suDqgvaKXKvOHPqG35uRffPpCagqEr3tFVfyYOXOF/
 Kq3UZF03LBdNOdM8qNvFlAdI6otpsInC+84EUBzJi34EM8FcQdk5cKkl0wWCEC/XSUOe
 e+BX2jzySgUEhjUc3lit2/Pj/8p/dS0y8IVUKLwkWDr43YNOFDjh325Fr5uHGOso3mkn
 ZkihBU8oefvkAd2bgl6jK3GLZUvmL29WrT+9t6rAvC44wC+Id4+sg/x0ZNGWL0qPpgY/
 +VpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WBZi/FWYMVw+6x0q1L6ySXMBwWz8l9YOs94KLfDt+sM=;
 b=NAVUaueDCAGcOhaLOI42SO/lfzSJziie+yusg6dbBWVdnp5qr9fdHmPQT/N8WsC5Ud
 7T5l8Ytu49t+AZUZpxbbX+G/t9D3/NSFvOaHXSblKoMdJZqA6lXQdbLpft+D6styY+Fp
 a/5cp4L3Uxjgcis+bfx2/+69dTLo1YKVYWK+Hy+Cvtmc2A/kS7vxEPI1wnpVmzmSJly+
 QT4hVGvT974rV5z4chd4Q8uHcSHjdRCQmaA7VBgjxnh3h9sQea7Ud+XXHaXUDU22f/SV
 3vAIXU/Z1NiQ0v3RAgD6P84H29i+u5puz4fMKOlM/Kc+PdYDq4U47h/x4O+TqmyZIVuj
 VtBg==
X-Gm-Message-State: APjAAAUzuNeJVgqbxX16PQ5aR0U8WaLH5ZU3dH0X1IJnsV6fAKoyNZFE
 f6vQOUyHviw+7W6kIUyzecks/Pck6eyIoghbcT8mZBsD
X-Google-Smtp-Source: APXvYqz8xsOtkV0Tm7m5AoyjAnnPZwbpq0fVDCw0AcnBfOy1aP/HBlFsrVX+y2EqHLqO/PlpIPBTliVBh7mh/LILCMU=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr12076182ljh.69.1564437313862; 
 Mon, 29 Jul 2019 14:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190726053959.2003-1-andrew@aj.id.au>
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:55:02 +0200
Message-ID: <CACRpkdZVVgqdt=+YYEauChoxjqKk6=LNKzj-40u3CFLxJr0D7Q@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hsDyl-003n5S-6a
X-Mailman-Approved-At: Thu, 08 Aug 2019 15:17:18 +0000
Subject: Re: [Openipmi-developer] [RFC-ish PATCH 00/17] Clean up ASPEED
 devicetree warnings
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, xow@google.com, Arnd Bergmann <arnd@arndb.de>,
 chen.kenyy@inventec.com, anoo@us.ibm.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, yang.brianc.w@inventec.com,
 openipmi-developer@lists.sourceforge.net, a.filippov@yadro.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>, wangzqbj@inspur.com,
 Greg KH <gregkh@linuxfoundation.org>, sschaeck@cisco.com,
 haiyue.wang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jul 26, 2019 at 7:40 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> The aim of this series is to minimise/eliminate all the warnings from the
> ASPEED devicetrees. It mostly achieves its goal, as outlined below.

I suppose it will all be merged in  the Aspeed tree?
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

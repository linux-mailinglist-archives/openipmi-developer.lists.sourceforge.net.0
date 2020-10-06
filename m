Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 335462846A0
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Oct 2020 09:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kPgxn-0004i9-PE; Tue, 06 Oct 2020 07:00:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1kPgxk-0004ht-4Y
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 07:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oe7zU6gzISKBUmakEze1jPjt4AoCrxJWUb32hirWtf4=; b=mLMCF1sdGYpOK4o+qQSvjX3czv
 KrC5cfb1xYMblhDmWw7RLwpPQOEcqvdfa58YBnp7G/60V4QB1XlNwor6UFmxESpYr2IdeOtOpMDy0
 cQOd2uBuGpXOi/m0C81CekTdmjUE//+i0PJRZcsVmWd0E9izAJaectRDaxbmsNUC2pQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oe7zU6gzISKBUmakEze1jPjt4AoCrxJWUb32hirWtf4=; b=O+JOAjVH74bx/xh33YMGwRX5+x
 OAxufien98xSvGhQS76RK5LWh0EuJhwQgF5NwJjQfSwACWoXszipP90oT9pTTTfKLxvdCmAuDH/CC
 LFL92BrZoenyshGUztSLppQcG4DNOpJrtwgFvjbQe7jZxqP2uJ26WYqyR72J5OAJDF0M=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPgxY-000fO0-Dq
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 07:00:40 +0000
Received: by mail-wr1-f67.google.com with SMTP id m6so12170295wrn.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Oct 2020 00:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Oe7zU6gzISKBUmakEze1jPjt4AoCrxJWUb32hirWtf4=;
 b=duVae73qGXrIWn0dA9Y2ba0eTvLVJldQbfNGMJhbCGq9paoehFS47xcK9OLpCkH4WF
 NqBrFaENJwbrU/th8XmIkh1VS1vd2oH1s1pXzDf2b99Cb/bAZ5mIsHV6ptmyF1OBtQBy
 GT9rg4w2n4Isj8jXnTNnLi+Aw/L7SFWFx72v0bNTNomBvhPxjgr+pR8su7g3MDB9LEtn
 /vLB/qwXlI19SAUsjJySvCczuoNdnCBTeLhRqUeV/ScZadUIhYWFwLaiDoYkjoSe+gXj
 C3HqfoAXjTKslZ5dKtYyztKJYZ9eX7NM47nSfo4FbYcgGC7bh2R2dMJAzlKCSNaNoWRF
 iUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Oe7zU6gzISKBUmakEze1jPjt4AoCrxJWUb32hirWtf4=;
 b=tM75GSqKItDCUXwZcIxMLZVo44BxrMzqd3HekhSsdDfqJYmXC1vDfFrFlyBpBSMPC+
 Ab1f44lDfmoDsEBAceywP6/pC2moQGwPU8h1Belsk9+zjR4kbsNRbqo/Xtuthqfs3XPW
 klcA0Kd915cfv+vHuCkfD1lRgjXF7rP3ul1hIl6afw8JXkXPaNzymWAUdaB/Ol8dqtS5
 DBMPg/8bIQc+pOZOuGeoonOsu8aLsUwPzwSTIDyKPvU5fNtRmYdPrIejxZhGMZUeB8SO
 4982AVJWQVH2NDYpgPvW0/lesqSExzc7uBVilw8gbtvoSqwPrarMMINSeZ6iY9WpKOde
 xs6Q==
X-Gm-Message-State: AOAM530ywHdD1PENhUwwA3zLvh34wn3S0x7yWRnVgW+q4ibUE3uAl1AU
 E8dV0bNrth3PuDYX46/npIxL0A==
X-Google-Smtp-Source: ABdhPJzRpE6n88xNVq3Fk+xQSff8QQNC8n1c0b7ajSoy19OwpevLFHK5HQwgX5M07UqJkIIa/Io0cQ==
X-Received: by 2002:adf:bb43:: with SMTP id x3mr3174885wrg.250.1601967621811; 
 Tue, 06 Oct 2020 00:00:21 -0700 (PDT)
Received: from dell ([91.110.221.236])
 by smtp.gmail.com with ESMTPSA id o186sm2537036wmb.12.2020.10.06.00.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 00:00:21 -0700 (PDT)
Date: Tue, 6 Oct 2020 08:00:13 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20201006070013.GA6148@dell>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPgxY-000fO0-Dq
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Another round of
 adding missing 'additionalProperties'
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Baolin Wang <baolin.wang7@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCAwMiBPY3QgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IEFub3RoZXIgcm91bmQg
b2Ygd2Fjay1hLW1vbGUuIFRoZSBqc29uLXNjaGVtYSBkZWZhdWx0IGlzIGFkZGl0aW9uYWwKPiB1
bmtub3duIHByb3BlcnRpZXMgYXJlIGFsbG93ZWQsIGJ1dCBmb3IgRFQgYWxsIHByb3BlcnRpZXMg
c2hvdWxkIGJlCj4gZGVmaW5lZC4KCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQg
LSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Blbmlw
bWktZGV2ZWxvcGVyCg==

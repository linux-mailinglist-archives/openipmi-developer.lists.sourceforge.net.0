Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF2C286751
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC6-0008Fu-5c; Wed, 07 Oct 2020 18:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <konstantin@linuxfoundation.org>) id 1kOndg-0003zj-P8
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 19:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CWQLnefJnV9lai9ha07+j4R+wHuwUmFBxVnJsYEYjsI=; b=NIQzGQBguuSQtG84TEY8NCdURW
 5ruj2xo1/6T3WTPBzq/fmgpr3pywKScOx8dxa+Qw9Mh+82/p1XRYxExw/USZ7s6ntY22NYT2phnMe
 DghT0g6l7DTs3itkQ1TdQIebWXonnb5rjlh2tCh4cQ9QYpRNJGn0NZPIfL1TFU/GJGa0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CWQLnefJnV9lai9ha07+j4R+wHuwUmFBxVnJsYEYjsI=; b=c+IOcadc8nTTPSwwOcScJvIPDM
 yi5q3L/niT8vOlwAiQ4nKS/JvF9+ZbLDYuCqihuI3daZi5W9P0GhJI/zdGux5HyliYdYy7gy7Az1X
 q2DRIQJHcgZwTUmMf4nkvXgCheSgHVLp1WHUEmJ05P5GpFHa11V+c2WPH+dKbreWgSew=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kOnda-00FXMo-Vl
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 19:56:16 +0000
Received: by mail-qk1-f194.google.com with SMTP id y198so895136qka.0
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 03 Oct 2020 12:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=CWQLnefJnV9lai9ha07+j4R+wHuwUmFBxVnJsYEYjsI=;
 b=TRIuiKupRuCU5VUlLtlKbsBlNQbnfv9jVMRmvy5WrUMTyv5g7SdRa3REDAkElPyBzv
 WSOws0iapEwPs/zPE6it9FcrVqCtAnsz/UakcRiEJxUOMFcBe7pAZ20U41kh3yUYUB6u
 lAK2edDDWs/OyXo320TXSOEjMz+2dy680rqXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=CWQLnefJnV9lai9ha07+j4R+wHuwUmFBxVnJsYEYjsI=;
 b=LVJhfPs0mc81tA9nwLFFN5S+FFEeseXHUVVREhapy3WOIeqV8I5A6nAnug7wnNmBBX
 8yZJcahYAHgsjqwPBxOfF71FdhCbmWE1NXtPhvt4MH8ucIIhS+j9pRMr+GWSb6veFlgN
 YBoYYU5teHmtRLZ5ksPJieifn7BKHVZ64Q5ksrOxyZ8eGcOM53/BDDngtLPonSukP4K2
 XIt1gWgSY0ePTO4jvkgzUXFKn/o0MFzWaEvXnM+gtkPZud58gdi7iaW+UwZmY344niVE
 PNQXo+ohlfaS6efG16alNuhq9LLrKIO3oFNgvuJJ30Z8F6qRd+xeBKYfblzcxbVkfA/Z
 oSAw==
X-Gm-Message-State: AOAM531+P1lo+VQhpFXRR2ma4p/645TIAjCNy7+UfMO9XzBwuNpV7rEU
 qyXzQqBwOR1nPOeTxWO1vHn7Gr2+siHmxXRm0iA=
X-Google-Smtp-Source: ABdhPJyXj0to29E/962sKEc6U/odEp+QvXfYgP1BYnP1Sa/tA6o1DsKTTnJkOmEDBav7C7kIlGgFyQ==
X-Received: by 2002:ac8:4548:: with SMTP id z8mr7894174qtn.291.1601753502454; 
 Sat, 03 Oct 2020 12:31:42 -0700 (PDT)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id a66sm3745298qkc.52.2020.10.03.12.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 12:31:41 -0700 (PDT)
Date: Sat, 3 Oct 2020 15:31:37 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Julia Lawall <julia.lawall@inria.fr>
Message-ID: <20201003193137.z2bpwzlz5a66kkex@chatter.i7.local>
Mail-Followup-To: Julia Lawall <julia.lawall@inria.fr>,
 Joe Perches <joe@perches.com>, Mark Brown <broonie@kernel.org>,
 tools@linux.kernel.org, linux-iio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-crypto@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, linux-acpi@vger.kernel.org,
 David Lechner <david@lechnology.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 kernel-janitors@vger.kernel.org, drbd-dev@lists.linbit.com,
 openipmi-developer@lists.sourceforge.net,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-ide@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-wireless@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
 <20201001110150.GA6715@sirena.org.uk>
 <f44d19ad596f261c0287c9ab18c45161003efb43.camel@perches.com>
 <20201003191501.o56tqq63d2buq5ox@chatter.i7.local>
 <alpine.DEB.2.22.394.2010032118420.2741@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010032118420.2741@hadrien>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
X-Headers-End: 1kOnda-00FXMo-Vl
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:25 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Joe Perches <joe@perches.com>,
 openipmi-developer@lists.sourceforge.net, tools@linux.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Oct 03, 2020 at 09:18:51PM +0200, Julia Lawall wrote:
> > > There seems to be some mismatch between b4's use of the
> > > cover letter to a patch series and what maintainers that
> > > apply a subset of the patches in the patch series.
> > >
> > > The merge description shows the entire patch series as
> > > applied, but the actual merge is only a subset of the
> > > series.
> > >
> > > Can this be improved in b4?
> >
> > So, the following logic should be applied:
> >
> > - if the entire series was applied, reply to 0/n
> > - if a subset only is applied, reply to each n/n of the patch that was
> >   cherry-picked out of the series
> >
> > Is that an accurate summary?
> 
> That sounds good.

I'm worried that this can get unwieldy for series of 50 patches where 49 
got applied. Would the following be better:

-----
From: ...
To: ...
Subject: Re: [PATCH 00/18] use semicolons...

On Sun...
> These patches...
>
> [...]

A subset of these patches was applied to

  https://...

Thanks!

[5/18] regmap: debugfs:
       commit:

(etc)
-----

In other words, we:

- specifically say that it's a subset
- instead of just enumerating the number of patches that were applied, 
  as is currently the case ([1/1]) we list the exact numbers out of the 
  posted series (e.g. [5/18])

I think this is a better solution than potentially flooding everyone 
with 49 emails.

-K


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

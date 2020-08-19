Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2009324A3FC
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 18:24:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8QtI-0004a8-QV; Wed, 19 Aug 2020 16:24:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.lkml@gmail.com>)
 id 1k8QtG-0004ZT-2g; Wed, 19 Aug 2020 16:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=; b=RRVgaz10P81EYO2F+k3j51HlLU
 1NomN4pXt4XmEzSiNxbAv5vjr9sEY2PnfvE2sLZ0yMU7O/nygxs9mPDR0bVek9KDIf8el/E8v3bNU
 RX4G4xsLtZPSNRW6E5ZdbNtgXbdCTk5k710e/ftw/zghSK8mpv4HxIvum28rys5RKlFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=; b=X+wX+qvEOP/b3WrSy5vKoJqkCV
 M4+NCGC8u70aXuvXE6i2rfkMWW0IIIfx7w3Am2z6agNxHnfgeE5dZ8Vw95Lyfsqhzyq1v6aubtf8D
 EmqVReijeyLuR1bPv3jJakpn8ELRLwMvgM+0D0Cs/cHf6Gn8zeksl+sc+qaRXx1VcNko=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8QtE-00CYBj-S0; Wed, 19 Aug 2020 16:24:41 +0000
Received: by mail-oi1-f196.google.com with SMTP id v13so21486623oiv.13;
 Wed, 19 Aug 2020 09:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=;
 b=Do1SU13c8m0ev7rC+aSlATz3YC7HLEYtrWvOJM3hlYx5tibAn4nY6QBTQ6sL63+y1B
 MMICOhoWO2QuUo7XJXcNmi2U+jZFkCQmxwKcysxTB45P8s8hyGWMfAV/b9TWZwGMUstf
 eQNrTEk4Md6ORX7QTkn+vE+7QuV40o6StptyB5lbRYfwqel6HisdptT26ZHXxM5fvMgf
 Hrtd8Cg5JcovJzKRBu4i1OQaNFicedwyX0Gjkgy9VMM/toVIToznUVdAB9xldZ2UK6eB
 IrMKr2f8qBsOPZBeTcYzlGRInoJUjiFOhM2YCLXROPBSSoWa8KVaeHXHoJOeD+LqB0Ea
 LpeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=;
 b=k8GUpFjubQdfBnUSBTZYfn90LVzPCNaD8xgQenb9YSy8T/4pfml4M4TwLm7tW6eY/A
 52AU+0qOx4H2qe5Y0zsSrvjkYeZXF2d9T6QxfFKW9mRBQNDM8AuI+Y7j/mLEHpl6HoY4
 T5oIc5iSsZa037e7aeik3LJ2y8x75//lIUnDZhzzKFKwsD2hLKlTNYwaWZMQ04cFC6RV
 Z2BITPqNTYvIGBRyOC9vaNDop0CiEMn4aaPywsXVhhXYW9Gler0/dtrT01ue8NMBKQII
 sxL57eq/pOKJssNVOuGn91XIoLAsVv0F/55cozNDws/vpjwaUXqKRnu/gX2hEmtrQV1T
 3rCg==
X-Gm-Message-State: AOAM533coEEXsrGUPrqcxE7V0TcCWDShOk3Ff5GhyukhY85+cn8/AxGY
 arsxDyBbYkQ2C8XyyI20+6tZWLZqe/eStxbGrVU=
X-Google-Smtp-Source: ABdhPJzpfHTlGoLujvQ5GY5n5H9BSvs/wYOUntKm/P0xrLOUSJQWGq951RNy2Mt1jRO58Yz8dbZ6uoLPp4/f2bRhLs0=
X-Received: by 2002:a05:6808:4c5:: with SMTP id
 a5mr3863067oie.175.1597854268104; 
 Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
In-Reply-To: <1597849185.3875.7.camel@HansenPartnership.com>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 21:54:16 +0530
Message-ID: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.lkml[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8QtE-00CYBj-S0
Subject: Re: [Openipmi-developer] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 Daniel Vetter <daniel@ffwll.ch>, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> [...]
> > > Since both threads seem to have petered out, let me suggest in
> > > kernel.h:
> > >
> > > #define cast_out(ptr, container, member) \
> > >     container_of(ptr, typeof(*container), member)
> > >
> > > It does what you want, the argument order is the same as
> > > container_of with the only difference being you name the containing
> > > structure instead of having to specify its type.
> >
> > Not to incessantly bike shed on the naming, but I don't like
> > cast_out, it's not very descriptive. And it has connotations of
> > getting rid of something, which isn't really true.
>
> Um, I thought it was exactly descriptive: you're casting to the outer
> container.  I thought about following the C++ dynamic casting style, so
> out_cast(), but that seemed a bit pejorative.  What about outer_cast()?
>
> > FWIW, I like the from_ part of the original naming, as it has some
> > clues as to what is being done here. Why not just from_container()?
> > That should immediately tell people what it does without having to
> > look up the implementation, even before this becomes a part of the
> > accepted coding norm.
>
> I'm not opposed to container_from() but it seems a little less
> descriptive than outer_cast() but I don't really care.  I always have
> to look up container_of() when I'm using it so this would just be
> another macro of that type ...
>

 So far we have a few which have been suggested as replacement
for from_tasklet()

- out_cast() or outer_cast()
- from_member().
- container_from() or from_container()

from_container() sounds fine, would trimming it a bit work? like from_cont().

-- 
       - Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

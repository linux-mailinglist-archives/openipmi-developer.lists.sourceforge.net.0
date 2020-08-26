Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E06E825254F
	for <lists+openipmi-developer@lfdr.de>; Wed, 26 Aug 2020 03:52:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kAkbW-0003qW-Hw; Wed, 26 Aug 2020 01:51:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1kAkbT-0003q8-5T; Wed, 26 Aug 2020 01:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6lKBXswTrzhA0xBsr6HB8AlB5+bACM8/QHtln5EsmDM=; b=Q+AdPUkI9B3i6jx9fZYC0Qc03V
 MsSqI3GanKLXTUaSwNap6KErUG1a5fOVG2Hk9wBTndQcISOxjy6597ROvB5C23y+6uqrPXFy3zS/S
 Y7NmEN8RVYFfV9LQDYrHVz++EAymXYiWmIwcU3FcJYH14oCdNkxwq0qFtLvSue6HzRB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6lKBXswTrzhA0xBsr6HB8AlB5+bACM8/QHtln5EsmDM=; b=fUfTTZJ+xc5lXYFh5JmU/cqgc2
 ANOQiyQeSnfHKBPlzmTTzAuBGakAvmKMNbKN7mCY6920fft4Gw6QP+MOkuONFIZ6qyrI7YeRL7t/u
 JKwTNQ8dG7a3NwnmGhUvHGn+qXjdCNOoVscU5bjnvhiAUnhNeRvbTHSNn1G6pXi8pA24=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kAkbR-000qhD-4n; Wed, 26 Aug 2020 01:51:55 +0000
Received: by mail-wr1-f65.google.com with SMTP id b17so176796wru.2;
 Tue, 25 Aug 2020 18:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6lKBXswTrzhA0xBsr6HB8AlB5+bACM8/QHtln5EsmDM=;
 b=rkPU8zA6FnvPI7YRdwlrF32Z+jufZRPGDhsVbublBxI+2WdfyrQZ4OMYugj2LjMgRs
 tcBC2iVxYnWeg8Zk6YWzQfE0csZvqLsQKSxRKrpJnxvpSdJ9HVsaxBuVVCZ33a7Fy89F
 YzL00nv71TEx1KwJewv+LaAx654GeLawZ3dB08BJtkewTW0RxdimmA59/2c32/oJxdK5
 dSKP0GfmMvAUQJfWlO1JkSN5McliJO+sig5zbM32H0/Kuj9D+O0+2QWE9ikcOBAgMoCE
 knF+3yVSHzD+dH7rwDtBk3Dij3c2i2NaVRbX/WHThEgypBISYgNE6EdHQjalStrd+n7R
 ERAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6lKBXswTrzhA0xBsr6HB8AlB5+bACM8/QHtln5EsmDM=;
 b=DmQOCaxRRFmUHUF/1JHEJptDLoYI0SSUYCifmeKCBWGwk/MyaNTtJM5ArzyemtrsVJ
 /YP7ufrNshiUSDm/Xa9L4+JnZ+6ITsXEMixl9oeApV6UnKl8jEZJmKX19+mnHz3Qu6Ec
 +eXlEIzxCe/wAkmBKxvHgX8QHk8Dq71b18qPETOlfzvhFZs/QI/GqPHK3RSaCNeVJmfe
 iX1uwOZjpVL2D1Ueeq44LILTg3r6lSsfYrY1MDjHkmvrXz3BRc3dwXCI70Q6h8+dB0q+
 1hDelVfCTPJtgSXwy/9SFWaTFgZVZDkrKpS2wKMc3licm85IxaiXRvwYhliHtmMR69jz
 6irA==
X-Gm-Message-State: AOAM533EKeON4LPMwpi9mOXn9oigFuKBkf7d5AHqZMEFo0Ou3lVe6Qwn
 9+rOvKmROcAnU78MbbVHAWiZLydMNkNriIBaB3E=
X-Google-Smtp-Source: ABdhPJyeqlKj5YPc50Em7rO4ODLMTr2DC/m+jfMJDMOpF+XoOI2kKLAaJQ+LNrc4dhPoiuNEDU0+R/Ls8lv1xf0wUss=
X-Received: by 2002:adf:db43:: with SMTP id f3mr14164955wrj.219.1598406706678; 
 Tue, 25 Aug 2020 18:51:46 -0700 (PDT)
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
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
In-Reply-To: <1597873172.4030.2.camel@HansenPartnership.com>
From: Allen Pais <allen.cryptic@gmail.com>
Date: Wed, 26 Aug 2020 07:21:35 +0530
Message-ID: <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hansenpartnership.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kAkbR-000qhD-4n
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
 dri-devel@lists.freedesktop.org, sre@kernel.org, kys@microsoft.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, linux-spi@vger.kernel.org, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, Jakub Kicinski <kuba@kernel.org>,
 mporter@kernel.crashing.org, jdike@addtoit.com,
 Kees Cook <keescook@chromium.org>, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org,
 Allen <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 alex.bou9@gmail.com, stefanr@s5r6.in-berlin.de,
 Daniel Vetter <daniel@ffwll.ch>, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > [...]
> > > > > Since both threads seem to have petered out, let me suggest in
> > > > > kernel.h:
> > > > >
> > > > > #define cast_out(ptr, container, member) \
> > > > >     container_of(ptr, typeof(*container), member)
> > > > >
> > > > > It does what you want, the argument order is the same as
> > > > > container_of with the only difference being you name the
> > > > > containing structure instead of having to specify its type.
> > > >
> > > > Not to incessantly bike shed on the naming, but I don't like
> > > > cast_out, it's not very descriptive. And it has connotations of
> > > > getting rid of something, which isn't really true.
> > >
> > > Um, I thought it was exactly descriptive: you're casting to the
> > > outer container.  I thought about following the C++ dynamic casting
> > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > outer_cast()?
> > >
> > > > FWIW, I like the from_ part of the original naming, as it has
> > > > some clues as to what is being done here. Why not just
> > > > from_container()? That should immediately tell people what it
> > > > does without having to look up the implementation, even before
> > > > this becomes a part of the accepted coding norm.
> > >
> > > I'm not opposed to container_from() but it seems a little less
> > > descriptive than outer_cast() but I don't really care.  I always
> > > have to look up container_of() when I'm using it so this would just
> > > be another macro of that type ...
> > >
> >
> >  So far we have a few which have been suggested as replacement
> > for from_tasklet()
> >
> > - out_cast() or outer_cast()
> > - from_member().
> > - container_from() or from_container()
> >
> > from_container() sounds fine, would trimming it a bit work? like
> > from_cont().
>
> I'm fine with container_from().  It's the same form as container_of()
> and I think we need urgent agreement to not stall everything else so
> the most innocuous name is likely to get the widest acceptance.

Kees,

  Will you be  sending the newly proposed API to Linus? I have V2
which uses container_from()
ready to be sent out.

Thanks.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

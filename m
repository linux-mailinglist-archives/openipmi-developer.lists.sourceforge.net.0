Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C21B5253B88
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Aug 2020 03:38:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kB6rr-0001ZP-Me; Thu, 27 Aug 2020 01:38:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.lkml@gmail.com>)
 id 1kB6rn-0001Yq-LA; Thu, 27 Aug 2020 01:38:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=; b=delypsByX9rSGCoQ1+ANPXVxkj
 Pbh+1G3/8HyxMVkIWr99++1dlHIEV65TfJFZrTZlg3hpRT05oCdO0SPbMMCNlFjaZeYQcRRn+J5wA
 06C3LIyiSDbIRDMbBl5Jt22amJl78YDDYrmuvXldz5Xbmcs0UThqnpRFzlmBFBUZ1XnA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=; b=QBblCmykrWLAaNdPyyqbhN8QSv
 V82NjqlAhw19alaUwcusxH7ChQEC3H4arG58XWvK04ZnR1apWXo/ix01bS7zVUrCNeciHPUcSCAEU
 uhEmH4r87N2lMejERVAwHPxWk7SvTEMDfDMuXMvQaNC9xKqAO5DM9MDu5JtSFiUWJ7gs=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kB6rj-007NLT-VT; Thu, 27 Aug 2020 01:38:15 +0000
Received: by mail-oi1-f195.google.com with SMTP id d189so2857198oig.12;
 Wed, 26 Aug 2020 18:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=;
 b=I80xaBRJ50n8a6fI5zGd+zDFXBJzdkM/CYwdFxWUUjYU3c+2p64n4BZ92Q57vwyNvT
 WA9AXEE5mkmSWs9RicapGSPmYl7SBg2jYYPKSa/nI/+15pdR7K1Y4Cu0DHfnjPwN8yXR
 icr8tNGeIcQL3s2nHPbJyB6yfauHJDS+gWazTyaRFZfsu6K/xYzwtyDy670Ye8cnRtyg
 TR/hJM9qLFyVWX5fPwsxGxi/JNo/PLB2M5jflTu50Xv+DnpTnsNDIefohCCH/iR6ipaV
 nyjrEne62FM9W1doljqrO4mZtREkO1PUraYtOXDLLpGubpcLL1+FWyQrEJDylKkUrU3D
 wKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=;
 b=j+BebECuYEWKt8AAEqPI7spyg8xzriSUNn1D29gWmoiqtuLzY6r4dpHsiik4pAYn0x
 YSd9WTWQZlJDzx2CB05cuXKp+H0LrtqESFrzvsxglGaGZzkbpXXJ8EDBP2VJi2/sjDJC
 H9cH4IwNzYvJ62FEFIqYGMfEM+0s4unoJ+B1QniH28LAbZS5ba0p4VVeIntjFn+fqFdQ
 r6bk/DRG2C9Hrz2ovv8tiUOREcUe7dTLndvuhD7sv8UJSpGRKSyRrM/wE8WkJfxqjR1r
 uvf79XqI3mPLQoDmq7cs22Olbv4AkYgZ1DORYkRkEPkxWgnOjbVE28KvUvAsUEZSAdoS
 FFwQ==
X-Gm-Message-State: AOAM5320mpruwlaQDlshocOjBduRAkzMIRpmPoAr7SPFclk56UKVf4KB
 +VevbcrSZHvXcRLy+RQncdxiVKhAnqwUd1NjQqg=
X-Google-Smtp-Source: ABdhPJwhCHTUyQeL6NO7VZ9TErlPHSPJaUSJlRG8on4DJcl3XVowSsSaDNvfXk39W2OiRUOfnXZzLQickeYXItlZbbE=
X-Received: by 2002:aca:ec95:: with SMTP id k143mr5299041oih.76.1598492278869; 
 Wed, 26 Aug 2020 18:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
 <20200826095528.GX1793@kadam> <202008260811.1CE425B5C2@keescook>
In-Reply-To: <202008260811.1CE425B5C2@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 27 Aug 2020 07:07:47 +0530
Message-ID: <CAOMdWSLyacdeoqnZBuLu6z1B6cY-WbtUJQm6+8=WHyE49tVaEg@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hansenpartnership.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.lkml[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kB6rj-007NLT-VT
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
 linux-atm-general@lists.sourceforge.net, s.hauer@pengutronix.de,
 manohar.vanga@gmail.com, airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, linux-input@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Dan Carpenter <dan.carpenter@oracle.com>, oakad@yahoo.com,
 intel-gfx@lists.freedesktop.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
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

On Wed, Aug 26, 2020 at 8:43 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 26, 2020 at 12:55:28PM +0300, Dan Carpenter wrote:
> > On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> > > On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> > > <James.Bottomley@hansenpartnership.com> wrote:
> > > >
> > > > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > > > [...]
> > > > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > > > kernel.h:
> > > > > > > >
> > > > > > > > #define cast_out(ptr, container, member) \
> > > > > > > >     container_of(ptr, typeof(*container), member)
> > > > > > > >
> > > > > > > > It does what you want, the argument order is the same as
> > > > > > > > container_of with the only difference being you name the
> > > > > > > > containing structure instead of having to specify its type.
> > > > > > >
> > > > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > > > getting rid of something, which isn't really true.
> > > > > >
> > > > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > > > outer container.  I thought about following the C++ dynamic casting
> > > > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > > > outer_cast()?
> > > > > >
> > > > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > > > some clues as to what is being done here. Why not just
> > > > > > > from_container()? That should immediately tell people what it
> > > > > > > does without having to look up the implementation, even before
> > > > > > > this becomes a part of the accepted coding norm.
> > > > > >
> > > > > > I'm not opposed to container_from() but it seems a little less
> > > > > > descriptive than outer_cast() but I don't really care.  I always
> > > > > > have to look up container_of() when I'm using it so this would just
> > > > > > be another macro of that type ...
> > > > > >
> > > > >
> > > > >  So far we have a few which have been suggested as replacement
> > > > > for from_tasklet()
> > > > >
> > > > > - out_cast() or outer_cast()
> > > > > - from_member().
> > > > > - container_from() or from_container()
> > > > >
> > > > > from_container() sounds fine, would trimming it a bit work? like
> > > > > from_cont().
> > > >
> > > > I'm fine with container_from().  It's the same form as container_of()
> > > > and I think we need urgent agreement to not stall everything else so
> > > > the most innocuous name is likely to get the widest acceptance.
> > >
> > > Kees,
> > >
> > >   Will you be  sending the newly proposed API to Linus? I have V2
> > > which uses container_from()
> > > ready to be sent out.
> >
> > I liked that James swapped the first two arguments so that it matches
> > container_of().  Plus it's nice that when you have:
> >
> >       struct whatever *foo = container_from(ptr, foo, member);
> >
> > Then it means that "ptr == &foo->member".
>
> I'm a bit stalled right now -- the merge window was keeping me busy, and
> this week is the Linux Plumbers Conference. This is on my list, but I
> haven't gotten back around to it. If you want, feel free to send the
> container_from() patch; you might be able to unblock this faster than me
> right now. :)
>

Sure, Thanks.



-- 
       - Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

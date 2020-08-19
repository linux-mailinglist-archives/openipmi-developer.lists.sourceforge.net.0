Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E99E24A0F2
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcY-0001Dp-J0; Wed, 19 Aug 2020 13:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.lkml@gmail.com>)
 id 1k8Ldz-0002ct-J1; Wed, 19 Aug 2020 10:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=; b=bG4Sb4g9MflnW9r9GzPtismP9n
 v7oqfBj3Wlqprzw5d74C6kvXuuuOM+VLlbIwTKE3Jv83SBBefqW/aEeobwhGEXLcXnKXwk9YvnJj7
 /gYlwLFLJ4xCOw3EJe4eUnV4OLdKStHKZb4f/qzF0Al93aeYWqXgoFCKeE7Vlho5UQvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=; b=Pu38GGPuy3ft3x60TiBQIoDiXJ
 RX/tvNdMm7Nb52KmZMT8LLx36UXrKWkaCSBzgMZiqMhOM+6W4J72kQPA2NFGw6jAFi1R5RPME+tiu
 FKCMe1vq+QKfh6JgNCHCl2oHkcY8kSsf1Ulmv3f0cYWwsseXMAJX0ZszC/o5wFgiGCgs=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8Ldx-001FyB-In; Wed, 19 Aug 2020 10:48:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id h16so18689209oti.7;
 Wed, 19 Aug 2020 03:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=;
 b=SAlnLFGsaJJ2xUQvXdp6/REunLAQzaLpmNpCPkhdMyKVNOL4zXoJc+uTpvFb1PLXQe
 nN8aQpwx9KlR0QpjA0U0Eq9qCAcvJ1BkG1Pmvfae+wF16AUCkU8W0GDQheD/o4B1VrUX
 PelVL5WwDQloIppGpod8O4LcRauK/SLT0vBKv+BhPM4L1DU+6rZBrJ0Dt0oV8Ce4u200
 wfYajuI8k/buRZ/KOQgJS9xFj6qU+vsS6Mi/Pic5cr7hyqCbNaPaM64dCQ32B92C7zpm
 twdkgIcY8FJxVqqD5N4bDX/Yu8aavznJiTYE5JD98MkyaozlEe8FkOVjNVcv9NBfu1pV
 5Fgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=;
 b=idFFL5tXl0j7hNZsBoKYuaRHGxXPc8ww3NHkcilHV4GUFG0vVZwtNYIEW2uJ86Rbr/
 u2F2ky73gWA9B9F6Al/CDeT2wXesxMQIqlvjTCQjULjJBtYgakAwXk5cG+3IlyLtCJkM
 i24OvfrX1JV3C5OVjVp6lFwwkxx9nM0ldWc/830fs0z96oPmS3PwFMNzwymKoExBtoqF
 u0e6GNH93z1QlQCHbjO0Vp9NHzRL6jR92k4fnM+uJ8EoDUvYummfUP08hpZsFHz7WSPm
 7djxx3SAFxxt6x5l68dxnWI5fMea6YgcswpJJGDeEFw7RiY8U3cfdHPZhXSVroSExrUc
 1EAg==
X-Gm-Message-State: AOAM531ER+8bszbKQXuqPFA6hEMytEDOrol9wrhs/SPQQ/UfdA/weSsH
 zCC00kNeGOl4uKLNHZx1WnjQ0GWaNADhK6gWZPc=
X-Google-Smtp-Source: ABdhPJwYTK+IRxToH0hqhLtJ7NIIqDs8lKmtEJkzNzElCKB5MQaF3rOwIOaAYWCB8rMlfnOVuvrNcqGFlbqr+yW4gKM=
X-Received: by 2002:a9d:128c:: with SMTP id g12mr17527086otg.242.1597834108000; 
 Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <202008181309.FD3940A2D5@keescook>
In-Reply-To: <202008181309.FD3940A2D5@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 16:18:16 +0530
Message-ID: <CAOMdWSLi-aUeKDN8Xn-X2uW_LmWsp2n=NL3dPGiUbQKm_MxcAg@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.lkml[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8Ldx-001FyB-In
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
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
 James Bottomley <James.Bottomley@hansenpartnership.com>, kys@microsoft.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> > > > > > > >
> > > > > > > > In preparation for unconditionally passing the
> > > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > > and from_tasklet() to pass the tasklet pointer explicitly.
> > > > > > >
> > > > > > > Who came up with the idea to add a macro 'from_tasklet' that
> > > > > > > is just container_of? container_of in the code would be
> > > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > > from_tasklet is doing.
> > > > > > >
> > > > > > > I'd fix that up now before everything else goes in...
> > > > > >
> > > > > > As I mentioned in the other thread, I think this makes things
> > > > > > much more readable. It's the same thing that the timer_struct
> > > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > > ever-repeating use of typeof(), long lines, etc.
> > > > >
> > > > > But then it should use a generic name, instead of each sub-system
> > > > > using some random name that makes people look up exactly what it
> > > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > > adding private variants of this doesn't seem like the best way
> > > > > forward. Let's have a generic helper that does this, and use it
> > > > > everywhere.
> > > >
> > > > I'm open to suggestions, but as things stand, these kinds of
> > > > treewide
> > >
> > > On naming? Implementation is just as it stands, from_tasklet() is
> > > totally generic which is why I objected to it. from_member()? Not
> > > great with naming... But I can see this going further and then we'll
> > > suddenly have tons of these. It's not good for readability.
> >
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> >
> > #define cast_out(ptr, container, member) \
> >       container_of(ptr, typeof(*container), member)
> >
> > It does what you want, the argument order is the same as container_of
> > with the only difference being you name the containing structure
> > instead of having to specify its type.
>
> I like this! Shall I send this to Linus to see if this can land in -rc2
> for use going forward?
>

Cool, I shall wait for it to be accepted and then spin out V2 with cast_out()

-- 
       - Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7D4249F4B
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:12:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8Nso-00060B-VS; Wed, 19 Aug 2020 13:12:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>)
 id 1k8Nsk-0005z7-0W; Wed, 19 Aug 2020 13:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xWNkZUVc08OQd8APLa1KfMU6OxGe0KusE9mCpbb8YpY=; b=eamPOSb1baFW4BDwRtRGlKzXhr
 fQadvEkyDkUrqtkTLqvuxWjPVrXxspf4K7KPDABxk28y5IaMIbTB/BdShBn8gL8WyItxbiMtmhBwq
 AKRqD5sQJjiFWfI2q0Gq9TFDjYLwZ1QUieYej9g6LNNclgDOV4ng8VGwzjxirJHU9mnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xWNkZUVc08OQd8APLa1KfMU6OxGe0KusE9mCpbb8YpY=; b=m1K/Hy7i6qr5xoWN73vfU2RfJB
 DMvtMHyOFcDwzDbmq67f0/ZU1ud8iQO2zJAPKWw9C+uqatN0pw1Yw+FBBsaFJRX7l56YCDpuaDIwW
 NUy/nPQRi6oJROVVD/fU0OlDRMIVo066mLclcvZIszD6gnNMBFPXAwZPsqO+rzCbVmvU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8Nsg-00G77L-5t; Wed, 19 Aug 2020 13:11:57 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BC432065F;
 Wed, 19 Aug 2020 13:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597842695;
 bh=vxq1i+5+rO8RGMcDRwl1Kl6llTi6GXYX5kfyPA4jblo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=skOvnyoi/s8DCceKzmupkt1jYOaWtFdAAqlQ/MFXOrVpqmMQl+hsMEEjs4HBhOLQu
 0c0ztyi4uXIKad6aYvYHUv3AbWF2jtioPUcwcQoAVMj74KG+/FMhByNjrec9UmAV0D
 o/Yb0Ae9Hr3NDLzjtRMcTZ4PqnDnfMAucqQAMsmk=
Date: Wed, 19 Aug 2020 15:11:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20200819131158.GA2591006@kroah.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8Nsg-00G77L-5t
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
Cc: ulf.hansson@linaro.org, jassisinghbrar@gmail.com, s.hauer@pengutronix.de,
 manohar.vanga@gmail.com, airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 linux-atm-general@lists.sourceforge.net, 3chas3@gmail.com,
 linux-input@vger.kernel.org, kuba@kernel.org, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 intel-gfx@lists.freedesktop.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, sre@kernel.org, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 19, 2020 at 07:00:53AM -0600, Jens Axboe wrote:
> On 8/18/20 1:00 PM, James Bottomley wrote:
> > On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> >> On 8/17/20 12:48 PM, Kees Cook wrote:
> >>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> >>>> On 8/17/20 12:29 PM, Kees Cook wrote:
> >>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> >>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
> >>>>>>> From: Allen Pais <allen.lkml@gmail.com>
> >>>>>>>
> >>>>>>> In preparation for unconditionally passing the
> >>>>>>> struct tasklet_struct pointer to all tasklet
> >>>>>>> callbacks, switch to using the new tasklet_setup()
> >>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
> >>>>>>
> >>>>>> Who came up with the idea to add a macro 'from_tasklet' that
> >>>>>> is just container_of? container_of in the code would be
> >>>>>> _much_ more readable, and not leave anyone guessing wtf
> >>>>>> from_tasklet is doing.
> >>>>>>
> >>>>>> I'd fix that up now before everything else goes in...
> >>>>>
> >>>>> As I mentioned in the other thread, I think this makes things
> >>>>> much more readable. It's the same thing that the timer_struct
> >>>>> conversion did (added a container_of wrapper) to avoid the
> >>>>> ever-repeating use of typeof(), long lines, etc.
> >>>>
> >>>> But then it should use a generic name, instead of each sub-system 
> >>>> using some random name that makes people look up exactly what it
> >>>> does. I'm not huge fan of the container_of() redundancy, but
> >>>> adding private variants of this doesn't seem like the best way
> >>>> forward. Let's have a generic helper that does this, and use it
> >>>> everywhere.
> >>>
> >>> I'm open to suggestions, but as things stand, these kinds of
> >>> treewide
> >>
> >> On naming? Implementation is just as it stands, from_tasklet() is
> >> totally generic which is why I objected to it. from_member()? Not
> >> great with naming... But I can see this going further and then we'll
> >> suddenly have tons of these. It's not good for readability.
> > 
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as container_of
> > with the only difference being you name the containing structure
> > instead of having to specify its type.
> 
> Not to incessantly bike shed on the naming, but I don't like cast_out,
> it's not very descriptive. And it has connotations of getting rid of
> something, which isn't really true.

I agree, if we want to bike shed, I don't like this color either.

> FWIW, I like the from_ part of the original naming, as it has some clues
> as to what is being done here. Why not just from_container()? That
> should immediately tell people what it does without having to look up
> the implementation, even before this becomes a part of the accepted
> coding norm.

Why are people hating on the well-known and used container_of()?

If you really hate to type the type and want a new macro, what about
'container_from()'?  (noun/verb is nicer to sort symbols by...)

But really, why is this even needed?

thanks,

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

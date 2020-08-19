Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF67249FF2
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:30:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OAt-0008En-PS; Wed, 19 Aug 2020 13:30:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>)
 id 1k8OAp-0008E8-0e; Wed, 19 Aug 2020 13:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vl37xWXt/ZfoQR80hkwKdqE3y+oWaf5GPKKgwu8kD28=; b=HyBNva10lC3uwqst4vJP7SzQSS
 cgK9/AuB4jc1BH02sFyYiFUb7jeAkgwj6gnDaiAj3QSb8pbpaRo5zBv7GSeU/mtHw2q9HB9bPcA8w
 T71yQbboiu6qcUzj5LPOl4exoxxiWRocyIXYwtq8RK2xJfh+0QqlbbVvbD3IbAytKc38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vl37xWXt/ZfoQR80hkwKdqE3y+oWaf5GPKKgwu8kD28=; b=FsN1SjW51XAE4f1rV7WGKGWvjP
 N/YifePzwHDDfuDwZFKf3SRS6s6fsMnGaTIyAUFFaBz/LEDBHs1U3Sz7iG9rBT9EC6h4gh8mCDyiQ
 24egDm8vkBNcrE17BxTRvM0QQycBFj5gIwr+d6YPNcTjeJiTBYekZtrZ8ZzdbahdEpcQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8OAm-00CQGZ-Au; Wed, 19 Aug 2020 13:30:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42672205CB;
 Wed, 19 Aug 2020 13:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597843817;
 bh=c/KIC1N+AThogXaPD4LYqtNhwTUgeFy5H658qfX3o6Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ybzJlclj7PKty/unc+4cb9Wd4WHHmVOSQ6smTxURwMsk2udx7+cwI/ct/VWqBRcaK
 TPHq+CA3SbHrkQu/Yr3Og03gF7ak5urBzCx3tlqFTNnNw+aON11BMaSWgLTxyquPrd
 2nUrrz+cKds/3opgas5LKByGC0micQy3OPDbdyF4=
Date: Wed, 19 Aug 2020 15:30:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20200819133039.GA3192753@kroah.com>
References: <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <20200819131158.GA2591006@kroah.com>
 <4f5a225d-460f-978f-e3cf-3f505140a515@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f5a225d-460f-978f-e3cf-3f505140a515@kernel.dk>
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
X-Headers-End: 1k8OAm-00CQGZ-Au
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
Cc: ulf.hansson@linaro.org, jassisinghbrar@gmail.com, manohar.vanga@gmail.com,
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Allen Pais <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>, shawnguo@kernel.org,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 linux-atm-general@lists.sourceforge.net, 3chas3@gmail.com,
 linux-input@vger.kernel.org, kuba@kernel.org, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, sre@kernel.org, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, intel-gfx@lists.freedesktop.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 19, 2020 at 07:17:19AM -0600, Jens Axboe wrote:
> On 8/19/20 6:11 AM, Greg KH wrote:
> > On Wed, Aug 19, 2020 at 07:00:53AM -0600, Jens Axboe wrote:
> >> On 8/18/20 1:00 PM, James Bottomley wrote:
> >>> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> >>>> On 8/17/20 12:48 PM, Kees Cook wrote:
> >>>>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> >>>>>> On 8/17/20 12:29 PM, Kees Cook wrote:
> >>>>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> >>>>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
> >>>>>>>>> From: Allen Pais <allen.lkml@gmail.com>
> >>>>>>>>>
> >>>>>>>>> In preparation for unconditionally passing the
> >>>>>>>>> struct tasklet_struct pointer to all tasklet
> >>>>>>>>> callbacks, switch to using the new tasklet_setup()
> >>>>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
> >>>>>>>>
> >>>>>>>> Who came up with the idea to add a macro 'from_tasklet' that
> >>>>>>>> is just container_of? container_of in the code would be
> >>>>>>>> _much_ more readable, and not leave anyone guessing wtf
> >>>>>>>> from_tasklet is doing.
> >>>>>>>>
> >>>>>>>> I'd fix that up now before everything else goes in...
> >>>>>>>
> >>>>>>> As I mentioned in the other thread, I think this makes things
> >>>>>>> much more readable. It's the same thing that the timer_struct
> >>>>>>> conversion did (added a container_of wrapper) to avoid the
> >>>>>>> ever-repeating use of typeof(), long lines, etc.
> >>>>>>
> >>>>>> But then it should use a generic name, instead of each sub-system 
> >>>>>> using some random name that makes people look up exactly what it
> >>>>>> does. I'm not huge fan of the container_of() redundancy, but
> >>>>>> adding private variants of this doesn't seem like the best way
> >>>>>> forward. Let's have a generic helper that does this, and use it
> >>>>>> everywhere.
> >>>>>
> >>>>> I'm open to suggestions, but as things stand, these kinds of
> >>>>> treewide
> >>>>
> >>>> On naming? Implementation is just as it stands, from_tasklet() is
> >>>> totally generic which is why I objected to it. from_member()? Not
> >>>> great with naming... But I can see this going further and then we'll
> >>>> suddenly have tons of these. It's not good for readability.
> >>>
> >>> Since both threads seem to have petered out, let me suggest in
> >>> kernel.h:
> >>>
> >>> #define cast_out(ptr, container, member) \
> >>> 	container_of(ptr, typeof(*container), member)
> >>>
> >>> It does what you want, the argument order is the same as container_of
> >>> with the only difference being you name the containing structure
> >>> instead of having to specify its type.
> >>
> >> Not to incessantly bike shed on the naming, but I don't like cast_out,
> >> it's not very descriptive. And it has connotations of getting rid of
> >> something, which isn't really true.
> > 
> > I agree, if we want to bike shed, I don't like this color either.
> > 
> >> FWIW, I like the from_ part of the original naming, as it has some clues
> >> as to what is being done here. Why not just from_container()? That
> >> should immediately tell people what it does without having to look up
> >> the implementation, even before this becomes a part of the accepted
> >> coding norm.
> > 
> > Why are people hating on the well-known and used container_of()?
> > 
> > If you really hate to type the type and want a new macro, what about
> > 'container_from()'?  (noun/verb is nicer to sort symbols by...)
> > 
> > But really, why is this even needed?
> 
> container_from() or from_container(), either works just fine for me
> in terms of naming.
> 
> I think people are hating on it because it makes for _really_ long
> lines, and it's arguably cleaner/simpler to just pass in the pointer
> type instead. Then you end up with lines like this:
> 
> 	struct request_queue *q =                                               
> 		container_of(work, struct request_queue, requeue_work.work);  
> 
> But I'm not the one that started this addition of from_tasklet(), my
> objection was adding a private macro for something that should be
> generic functionality.

Agreed.

> Hence I think we either need to provide that, or
> tell the from_tasklet() folks that they should just use container_of().

Also agreed, thanks.

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

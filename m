Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D75252AED
	for <lists+openipmi-developer@lfdr.de>; Wed, 26 Aug 2020 11:59:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kAsCx-0000DH-G5; Wed, 26 Aug 2020 09:59:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>)
 id 1kAsCs-0000CS-1r; Wed, 26 Aug 2020 09:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=99lx5iUfIkT1H9yGqvvBxJOhPDkHKQlkIHLEmQ8PDXw=; b=kSQM1DQEufphOZYtXp8VldOZyR
 TehDsw/MgMkU6wqig5o8hNldCG0F/awpZ09Qwvjhqa3+rfwH+c0aoWDJy2/DEQ4wd62kFOAXTiXjJ
 TjAEUBj5izE6x2W8jKzllDyWtHSnI3x485TdH1KT452ckIza2xniCNbidzhC2uy4CiLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=99lx5iUfIkT1H9yGqvvBxJOhPDkHKQlkIHLEmQ8PDXw=; b=EXSpBp+e2lepnuaw5//K4xC54V
 MfptDUhgaqLTugPiPb9/4C4MZ1dsFPU9ItBSW1zST+OZGVzh8A6cioTzpxRU6OKiEcjxC2HA5P+YD
 1ao0N6+P3gCRD8immXuAa9jCKcONQD9y6kWnxMep5feXOOJWq7anpd9bkh4IlAb4OICc=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kAsCo-003wUu-8U; Wed, 26 Aug 2020 09:59:02 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07Q9rmML110211;
 Wed, 26 Aug 2020 09:58:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=99lx5iUfIkT1H9yGqvvBxJOhPDkHKQlkIHLEmQ8PDXw=;
 b=pHUo6T87aN4HkyoolW4yELYhdaG6ZvSavIkxfBgUOj0Org1O9z1r+ZQOuET12WJ7H5Pc
 xnVCQfyl6qFGmQNX19oW+/bFETNvgM6pF7csHfuvBHB3cwqfsUd0O1/rGIc/5OQTnnFB
 MEojeNBzUtEmGEuqP0gM6P7/G+Nn01P+JHgzxPDBnzH/evLKYOeuFaI9EUmCauKOO4Dv
 zZppw57NrWnHoxtj9wH99M6dzm4GlspA3OSB7TYDhwfTGMPmrp1Qrwutr2AFfwHTZX4W
 mmUMO7IJxJ3uJAsWGpM1c6assMY729yLXVkHlFuUfSzlq1xzAsoVwPIWis3T8JNJMC4u Ng== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 333dbryf24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Aug 2020 09:58:06 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07Q9odrR139540;
 Wed, 26 Aug 2020 09:56:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 333rtywr8n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Aug 2020 09:56:05 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 07Q9tlAJ026067;
 Wed, 26 Aug 2020 09:55:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Aug 2020 02:55:46 -0700
Date: Wed, 26 Aug 2020 12:55:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Allen Pais <allen.cryptic@gmail.com>
Message-ID: <20200826095528.GX1793@kadam>
References: <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9724
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008260078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9724
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1011
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008260079
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hansenpartnership.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kAsCo-003wUu-8U
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
 dri-devel@lists.freedesktop.org, Allen <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux1394-devel@lists.sourceforge.net, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, linux-input@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 intel-gfx@lists.freedesktop.org, Kees Cook <keescook@chromium.org>,
 oakad@yahoo.com, linux-kernel@vger.kernel.org, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com, stefanr@s5r6.in-berlin.de,
 Daniel Vetter <daniel@ffwll.ch>, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> >
> > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > [...]
> > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > kernel.h:
> > > > > >
> > > > > > #define cast_out(ptr, container, member) \
> > > > > >     container_of(ptr, typeof(*container), member)
> > > > > >
> > > > > > It does what you want, the argument order is the same as
> > > > > > container_of with the only difference being you name the
> > > > > > containing structure instead of having to specify its type.
> > > > >
> > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > getting rid of something, which isn't really true.
> > > >
> > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > outer container.  I thought about following the C++ dynamic casting
> > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > outer_cast()?
> > > >
> > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > some clues as to what is being done here. Why not just
> > > > > from_container()? That should immediately tell people what it
> > > > > does without having to look up the implementation, even before
> > > > > this becomes a part of the accepted coding norm.
> > > >
> > > > I'm not opposed to container_from() but it seems a little less
> > > > descriptive than outer_cast() but I don't really care.  I always
> > > > have to look up container_of() when I'm using it so this would just
> > > > be another macro of that type ...
> > > >
> > >
> > >  So far we have a few which have been suggested as replacement
> > > for from_tasklet()
> > >
> > > - out_cast() or outer_cast()
> > > - from_member().
> > > - container_from() or from_container()
> > >
> > > from_container() sounds fine, would trimming it a bit work? like
> > > from_cont().
> >
> > I'm fine with container_from().  It's the same form as container_of()
> > and I think we need urgent agreement to not stall everything else so
> > the most innocuous name is likely to get the widest acceptance.
> 
> Kees,
> 
>   Will you be  sending the newly proposed API to Linus? I have V2
> which uses container_from()
> ready to be sent out.

I liked that James swapped the first two arguments so that it matches
container_of().  Plus it's nice that when you have:

	struct whatever *foo = container_from(ptr, foo, member);

Then it means that "ptr == &foo->member".

regards,
dan carpenter



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

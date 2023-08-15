Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D6E77CC29
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Aug 2023 13:56:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qVseb-0007Te-4v;
	Tue, 15 Aug 2023 11:56:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david.laight@aculab.com>) id 1qVsKh-0001rl-2Y
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Aug 2023 11:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sbILtl5r4Ya0iXfGvro67p+caDDFxLBfAUI7JakVdy4=; b=aR2oQKxWbCAMLtDZYAJFuxyLuE
 WpoJW/l1MbJlFtIkwy6T1tNabkfwAaJ+N4Gn+Z3qSd4Pl6MN67ijjE0PoUB6sk6B7ATdX8RspuwwA
 mLRQqh51VJEIHvNHyGNwMuaDMWR0Og3nmU7m8kSfcHJh0az0a9CUKIuag1EVuqe5AZlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sbILtl5r4Ya0iXfGvro67p+caDDFxLBfAUI7JakVdy4=; b=GrxuwTchp1H7Kcuj2N7qNRO9Uu
 8qvgTLoEdYZ+MiZFdMwbmhHKkr0O7CqE5a4EEu8oOC57haiJiJmn0/dZaxdnnKUTvMPVDxAJwE0Zp
 UVpD0xBriqI6GcHYfXTvkK7z9OKkNGb97uCsYzmd5R3zv1WDPcQ7NYU3veltbsvIz0p8=;
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.86.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qVsKd-0005Pn-TR for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Aug 2023 11:35:31 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-233-kVB3OncmNJKG28V9ejQR5Q-1; Tue, 15 Aug 2023 12:19:52 +0100
X-MC-Unique: kVB3OncmNJKG28V9ejQR5Q-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Tue, 15 Aug
 2023 12:19:50 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Tue, 15 Aug 2023 12:19:50 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'minyard@acm.org'" <minyard@acm.org>, Justin Stitt
 <justinstitt@google.com>
Thread-Topic: [PATCH] ipmi_si: fix -Wvoid-pointer-to-enum-cast warning
Thread-Index: AQHZzJJNhRgyMCyjXUCyrlg7Yy+IN6/rOtTw
Date: Tue, 15 Aug 2023 11:19:50 +0000
Message-ID: <85c5e4b69dbb4ff699f380b373f6440f@AcuMS.aculab.com>
References: <20230809-cbl-1902-v1-1-92def12d1dea@google.com>
 <ZNaZrHEs5FP7Lf8A@mail.minyard.net>
In-Reply-To: <ZNaZrHEs5FP7Lf8A@mail.minyard.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard > Sent: 11 August 2023 21:27 ... > >
 memset(&io, 
 0, sizeof(io)); > > - io.si_type = (enum si_type) match->data; > > + io.si_type
 = (unsigned long) match->data; > > Wouldn't you wan [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.58.86.151 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.58.86.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qVsKd-0005Pn-TR
X-Mailman-Approved-At: Tue, 15 Aug 2023 11:56:03 +0000
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: fix
 -Wvoid-pointer-to-enum-cast warning
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
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Tom Rix <trix@redhat.com>, "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard
> Sent: 11 August 2023 21:27
...
> >  	memset(&io, 0, sizeof(io));
> > -	io.si_type	= (enum si_type) match->data;
> > +	io.si_type	= (unsigned long) match->data;
> 
> Wouldn't you want to use intptr_t or uintptr_t?

The kernel tends to use 'long' for the same reason
it doesn't use uint8_t.

Although I'm sure the correct/better fix is to either add variants
of the match/lookup functions that return (say) unsigned long
or change all the drivers to allocate a structure that contains
the required value.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

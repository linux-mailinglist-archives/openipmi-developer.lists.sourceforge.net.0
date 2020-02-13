Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BF915BEEA
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Feb 2020 14:04:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j2EAE-00083x-HU; Thu, 13 Feb 2020 13:04:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j2EAD-00083q-8W
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Feb 2020 13:04:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0adB+pt4qh1OaTMfcot+CB7VlM3xlqwZE8/MPGMlo18=; b=S1XLPw8Rqr9bnZvxHlMRoeWF3N
 GTB6QR5jdI5cQaE0AZ/cl4bQ0qdiHHGesu9WkulbxOXA5xmPfioRrUylKUIQeXjY05TARUHt/np6/
 cnBZ3U9RmnjQSLY23Xh+loFBjygz2ExhRDDkAQYo+u4JSOhLG5GGwZ8O+DHFMpTvhyw4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0adB+pt4qh1OaTMfcot+CB7VlM3xlqwZE8/MPGMlo18=; b=GTxXgZ6gRDXaLNjKGk5NifvCbu
 eRALwviZ/YEKsGrsckV79Tr/YjDql6xZBLeN161wqQpBcIo50Jxt+x4nbydXMdiJtFxH1B8r1RnyZ
 aberr/dCv4Hqb09JzzBNPvO12wwkya7qnDLrsWpRyowNOjC0r3XAzaRG5p0NIxrA2MvI=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j2EAB-00BRaJ-SN
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Feb 2020 13:04:17 +0000
Received: by mail-ot1-f66.google.com with SMTP id j20so5485462otq.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Feb 2020 05:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0adB+pt4qh1OaTMfcot+CB7VlM3xlqwZE8/MPGMlo18=;
 b=NS8Dc8pFZ/7KzwYyztK06wo2fsUH6hYpT2WDma2QuQjZFYqSp8rrXFU+RY00kN6Y/9
 oddxJ9ID4bE35Hx6odPhqy3eH/fBVz1r1vEUMWKSBQu3tS964k0Bkoeh8CD28Za40Y/A
 QnvqmnYp9dwUSQLDusy3v0bDsHSCjYDQh5INRrCBD1LF75hZIKkjyFWgeKfIhddnaitC
 GGY0QuyWCrVJn+3AN341O04AFg0zpeQMSpsOPfkh0niNKYrRQSka563XfPEPa8AfnNbZ
 dFl291zS+Fjw4iNro/6KKF62pYJiHT6tV5wIudqoQMcROo+FthxlrFgYTKVz/nEPWYw9
 GcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=0adB+pt4qh1OaTMfcot+CB7VlM3xlqwZE8/MPGMlo18=;
 b=id69tz6lQe7wAG24Q6pAzoI8J7sy42nJW9Rrb2K8UZO+kg0fyn1yA0DqibROvL6u6j
 C7ApTlxbB5jPotaIPWQFA+yU3OfNeviyetrG6NVz57N6/zdcVxE6sh4gxDvkOUZquoAt
 +vqUSp0/LdkhOQFKc2bWKclEthvimsbxfVAUCaaKIrjGV7yZXWR1N+bW2f0ICx+Zouft
 UoIQUI7oqPu1ttGXFJlvUiOl2DLJNsXER+s2wiQ1Vy5uJQbk7SUT22IEnZJnSM6cSoET
 V9QM5AE0HjYUGbGOv24LOTGPupbpqABAfv40L8K25kPa9nlMTOD9Dq/Sr1Nct9DO/TOT
 ThFg==
X-Gm-Message-State: APjAAAU/yB4XNnsq9rT62GZWJH2U979HxxL2zop+0FPSN3i7vBVpYBnY
 zDvpcdrV7RF06ASg3q9SyvXz4Y8=
X-Google-Smtp-Source: APXvYqzkJVtsmAZGdGeqZM9cgu3uJE+vU03NBbc9q4BAapKFdd2bc55PSaWCVEKdbndFoe2bV1EQig==
X-Received: by 2002:a05:6830:22e2:: with SMTP id
 t2mr13583494otc.129.1581599050001; 
 Thu, 13 Feb 2020 05:04:10 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id 32sm772548ott.38.2020.02.13.05.04.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 05:04:09 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e166:6491:dd75:4196])
 by serve.minyard.net (Postfix) with ESMTPSA id F047C180053;
 Thu, 13 Feb 2020 13:04:08 +0000 (UTC)
Date: Thu, 13 Feb 2020 07:04:07 -0600
From: Corey Minyard <minyard@acm.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
Message-ID: <20200213130407.GQ7842@minyard.net>
References: <20200117132521.31020-1-frextrite@gmail.com>
 <20200212134552.GN7842@minyard.net>
 <20200212214956.GT2935@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212214956.GT2935@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j2EAB-00BRaJ-SN
Subject: Re: [Openipmi-developer] [PATCH v3] drivers: char: ipmi:
 ipmi_msghandler: Pass lockdep expression to RCU lists
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
Reply-To: minyard@acm.org
Cc: Arnd Bergmann <arnd@arndb.de>, Amol Grover <frextrite@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Feb 12, 2020 at 01:49:56PM -0800, Paul E. McKenney wrote:
> On Wed, Feb 12, 2020 at 07:45:52AM -0600, Corey Minyard wrote:
> > On Fri, Jan 17, 2020 at 06:55:22PM +0530, Amol Grover wrote:
> > > intf->cmd_rcvrs is traversed with list_for_each_entry_rcu
> > > outside an RCU read-side critical section but under the
> > > protection of intf->cmd_rcvrs_mutex.
> > > 
> > > ipmi_interfaces is traversed using list_for_each_entry_rcu
> > > outside an RCU read-side critical section but under the protection
> > > of ipmi_interfaces_mutex.
> > > 
> > > Hence, add the corresponding lockdep expression to the list traversal
> > > primitive to silence false-positive lockdep warnings, and
> > > harden RCU lists.
> > > 
> > > Add macro for the corresponding lockdep expression to make the code
> > > clean and concise.
> > > 
> > > Signed-off-by: Amol Grover <frextrite@gmail.com>
> > 
> > After reading everything, I think this is correct, but I would like
> > Paul's stamp of approval on this.
> 
> Acked-by: Paul E. McKenney <paulmck@kernel.org>
> 
> But note that I did not trace the locking in the case of ipmi_add_smi().
> I did the others, so lockdep can do the last one.  ;-)

Thanks, it's in my queue for 5.7.

-corey

> 
> 							Thanx, Paul
> 
> > Thanks,
> > 
> > -corey
> > 
> > > ---
> > > v3:
> > > - Remove rcu_read_lock_held() from lockdep expression since it is
> > >   implicitly checked.
> > > - Remove unintended macro usage.
> > >  
> > > v2:
> > > - Fix sparse error
> > >   CHECK: Alignment should match open parenthesis
> > > 
> > >  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++++++----
> > >  1 file changed, 10 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > > index cad9563f8f48..64ba16dcb681 100644
> > > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > > @@ -618,6 +618,8 @@ static DEFINE_MUTEX(ipmidriver_mutex);
> > >  
> > >  static LIST_HEAD(ipmi_interfaces);
> > >  static DEFINE_MUTEX(ipmi_interfaces_mutex);
> > > +#define ipmi_interfaces_mutex_held() \
> > > +	lockdep_is_held(&ipmi_interfaces_mutex)
> > >  static struct srcu_struct ipmi_interfaces_srcu;
> > >  
> > >  /*
> > > @@ -1321,7 +1323,8 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
> > >  	 * synchronize_srcu()) then free everything in that list.
> > >  	 */
> > >  	mutex_lock(&intf->cmd_rcvrs_mutex);
> > > -	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link) {
> > > +	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
> > > +				lockdep_is_held(&intf->cmd_rcvrs_mutex)) {
> > >  		if (rcvr->user == user) {
> > >  			list_del_rcu(&rcvr->link);
> > >  			rcvr->next = rcvrs;
> > > @@ -1599,7 +1602,8 @@ static struct cmd_rcvr *find_cmd_rcvr(struct ipmi_smi *intf,
> > >  {
> > >  	struct cmd_rcvr *rcvr;
> > >  
> > > -	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link) {
> > > +	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
> > > +				lockdep_is_held(&intf->cmd_rcvrs_mutex)) {
> > >  		if ((rcvr->netfn == netfn) && (rcvr->cmd == cmd)
> > >  					&& (rcvr->chans & (1 << chan)))
> > >  			return rcvr;
> > > @@ -1614,7 +1618,8 @@ static int is_cmd_rcvr_exclusive(struct ipmi_smi *intf,
> > >  {
> > >  	struct cmd_rcvr *rcvr;
> > >  
> > > -	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link) {
> > > +	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
> > > +				lockdep_is_held(&intf->cmd_rcvrs_mutex)) {
> > >  		if ((rcvr->netfn == netfn) && (rcvr->cmd == cmd)
> > >  					&& (rcvr->chans & chans))
> > >  			return 0;
> > > @@ -3450,7 +3455,8 @@ int ipmi_add_smi(struct module         *owner,
> > >  	/* Look for a hole in the numbers. */
> > >  	i = 0;
> > >  	link = &ipmi_interfaces;
> > > -	list_for_each_entry_rcu(tintf, &ipmi_interfaces, link) {
> > > +	list_for_each_entry_rcu(tintf, &ipmi_interfaces, link,
> > > +				ipmi_interfaces_mutex_held()) {
> > >  		if (tintf->intf_num != i) {
> > >  			link = &tintf->link;
> > >  			break;
> > > -- 
> > > 2.24.1
> > > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

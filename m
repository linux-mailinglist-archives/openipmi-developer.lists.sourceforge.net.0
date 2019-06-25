Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C31755583
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jun 2019 19:08:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hfovC-0007Qx-63; Tue, 25 Jun 2019 17:07:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1hfovB-0007Qr-2A
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jun 2019 17:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sp7u8G5/Xp82JLc9XulZtsKYhxqet+0MBZGL62uam3A=; b=PMVVUpPqbZo3+RZaVQmBd7T40J
 btXLyJWJ+yMTwXSjkHgN+Ds0b1ItgEZ6JdbngPs2OyeGO6g/qHqotM7C7fuMT+mFkv8/d+XJYpI5L
 G38bvLcIgZ8bYU2E2pTfjBmSGNYspchnZuWnEx+r+ZRiuon0LtSiNIIjcn25bcWVX794=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sp7u8G5/Xp82JLc9XulZtsKYhxqet+0MBZGL62uam3A=; b=k2/70xcjp/DZ/sGb3Ior09fZ9Q
 Cr66poCJYULx8nosb0e/Pqjc5ZP0K2ta/47gdjXwG3AA9HvBhprYCJZlEP1ktz3tUCfv0r6Z95tPg
 e77LusiNJc1XWNt2+6sd6EgSbn4TKtsQ3b+mUYfOV/tLvd/afVucm0rIodRqrk8x1R2o=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfovD-009kQ9-Ui
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jun 2019 17:07:57 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7F833882FB;
 Tue, 25 Jun 2019 17:07:48 +0000 (UTC)
Received: from dhcp-17-119.bos.redhat.com (dhcp-17-119.bos.redhat.com
 [10.18.17.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D57BB5B68F;
 Tue, 25 Jun 2019 17:07:47 +0000 (UTC)
To: cminyard@mvista.com
References: <352582dd-a26d-a788-d63b-36aa9c029fb0@redhat.com>
 <20190625155548.GG5565@minyard.net>
From: Tony Camuso <tcamuso@redhat.com>
Message-ID: <02121e44-5cc3-126d-89b3-e2f2978fda26@redhat.com>
Date: Tue, 25 Jun 2019 13:07:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625155548.GG5565@minyard.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 25 Jun 2019 17:07:49 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hfovD-009kQ9-Ui
Subject: Re: [Openipmi-developer] IPMI test suite automation
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 6/25/19 11:55 AM, Corey Minyard wrote:
> On Tue, Jun 25, 2019 at 10:24:29AM -0400, Tony Camuso wrote:
>>
>> I'd like to know if there are any test suites out there for
>> automated IPMI testing, especially as new features emerge and
>> new bugs are exposed.
>>
>> We have a few of our own, but they are relatively primitive
>> and don't provide a breadth and depth of coverage that could
>> affirm full functionality or catch all regressions.
>> Unfortunately, many regressions and functionality misses are
>> caught by our customers.
>>
>> I know that Corey uses a VM with virtual IPMI, and I'd like
>> to know more about that, if there is a link somewhere that
>> has the information.
>   
> qemu has an IPMI simulator built into it, either with a local minimal
> BMC (basically with just a watchdog) and it allows connecting to an
> external BMC (like ipmi_sim in openipmi) for more complex simulation.
> In fact, some people are using this to do cluster management.  If you
> search "qemu openipmi" you will find a number of resources.
> 
> I also have a lot of pending extensions to the qemu IPMI simulator,
> for SSIF and PCI interfaces, for instance, that I haven't found time
> to get ready.
> 
> ipmi_sim also provides LAN connections, so it allows testing LAN interfaces
> with simulation.

Thanks for the great leads on qemu and ipmi_sim. I'll be looking into
that directly.

> 
>> Virtual technology frees us from having to find systems using
>> all the various methods of reporting the IPMI as well as a
>> means to test all the functionality, and it provides a better
>> way to automate testing.
> 
> Indeed it has been very helpful for me.  That's why I wrote it :-).
> But I'm not sure what you mean by testing here, many components need
> to be tested:
> 
> * BMC
> * Driver
> * Libraries
> * Applications

That's a good question. Our focus in the kernel group would be on the
driver. However, developing testing for the hardware, libraries, and
apps would be helpful.

> Testing BMCs is probably the weakest link. From my experience, most vendors> just get IPMI working to so that their own management applications will work
> and don't properly implement all the things that are required for a general
> application to work (entity presence and entity containment are two that are
> notoriously bad).  

+1
A suite of tests for the hardware might help make vendors more sensitive to
spec compliance.

> I know Intel has some sort of test suite, but I don't
> know much about it, and you really can't test all that stuff easily, though
> I suppose you could test a lot.  It would be hard.
> 
> A driver test suite would be really nice, and that something that is
> probably fairly doable.  I don't envision the driver changing very much
> in the future, though.  It's really something I should have done long
> ago :(.  The difficulty here is that many issues I see are creative
> interpretations of the standard in implementations.

I'd like to attempt a driver test suite. Any suggestions or contributions
are welcome.

> The OpenIPMI library has some built-in tests (make check) using ipmi_sim.
> The exercise basic functionality in most places, but aren't complete by
> any means.  I don't know if ipmitool or freeipmi have anything.
> 
> It would be really nice if applications could have a way to use a simulator
> to test, and ipmi_sim could easily provide that (either through qemu or
> through a LAN interface).  It's not very easy to use, though, it needs a
> lot of work and documentation to make it user-friendly.  Setting up a BMC
> with all the sensors, SDRs, FRU data, etc. is a big job, even with a
> user-friendly tool.
> 
> I'm happy to work with volunteers on any of these things.  I don't have a
> lot of time to spend on anything like this in the near future.  IPMI doesn't
> seem to be going away.
> 
> -corey
> 

Many thanks for the comprehensive reply and suggestions.

>>
>> Regards,
>> Tony Camuso
>> Red Hat



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

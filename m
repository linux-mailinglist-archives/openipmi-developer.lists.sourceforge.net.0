Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9F8D2FE3
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Oct 2019 20:01:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIcl6-0007KB-Am; Thu, 10 Oct 2019 18:01:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1iIcl4-0007K4-Mo
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Oct 2019 18:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fj7dF0aDoJKjdXw37WaDboAt+ZxXGz/cHQQiwHTeq2g=; b=EY1+/PBLiMKBa7Pu6ZqGbSn/7T
 MbXT87VDqy3J+oD7MZEFnUXwnpsaVUcs3N3KeFW14vj6Xfj1bxZAXupLxr/94vpDmzfVrigxzAgjl
 CBY91YldbIX9nkB6TqLmN5t+xLFgXl4aih7u3tEv1SaqAQwCQF65+3qTH07XbjHxq5rw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fj7dF0aDoJKjdXw37WaDboAt+ZxXGz/cHQQiwHTeq2g=; b=kl3234ZQPX3cFzZBAG5ueX2ooB
 tkWVqPmlBYDIxrPQ/fKkp0opGkHwdjOCMOveTvoerh06Xo7BYQuX14OT+j9zMBNF+EBjmVwx4WJmu
 d21xN5D39ANSIF2CNWXW90HYWA9z1MMrEc5/jpWLgXei6lVfXcBbus2AHI+tPX2P2+QI=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIckz-00D5Bu-5d
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Oct 2019 18:01:50 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 761871DB6;
 Thu, 10 Oct 2019 18:01:37 +0000 (UTC)
Received: from [10.3.116.11] (ovpn-116-11.phx2.redhat.com [10.3.116.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 076C560600;
 Thu, 10 Oct 2019 18:01:33 +0000 (UTC)
To: minyard@acm.org
References: <cbf409f1-9055-5786-eae8-8fff422038be@redhat.com>
 <20191010131758.GB14172@t560>
From: tony camuso <tcamuso@redhat.com>
Message-ID: <41768c2f-6ef4-4215-2f5b-ea04328e7165@redhat.com>
Date: Thu, 10 Oct 2019 14:01:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191010131758.GB14172@t560>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Thu, 10 Oct 2019 18:01:38 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iIckz-00D5Bu-5d
Subject: Re: [Openipmi-developer] ipmi kmods can be unloaded even when
 userspace is accessing /dev/ipmi0
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
Cc: cminyard@mvista.com, openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/10/19 9:17 AM, Corey Minyard wrote:
> On Wed, Oct 09, 2019 at 01:27:28PM -0400, tony camuso wrote:
>>
>> One of our vendors reports that the following commit ...
>>
>> commit e86ee2d44b44056243da17c120ad258717cedf9b
>> Author: Corey Minyard <cminyard@mvista.com>
>> Date:   Thu Apr 5 22:05:04 2018 -0500
>>
>>      ipmi: Rework locking and shutdown for hot remove
>>      To handle hot remove of interfaces, a lot of rework had to be
>>      done to the locking.  Several things were switched over to srcu
>>      and shutdown for users and interfaces was added for cleaner
>>      shutdown.
>>      Signed-off-by: Corey Minyard <cminyard@mvista.com>
>>
>> ... appears to have made it possible to unload ipmi kmods when userspace
>> is accessing /dev/ipmi0
>>
>> Is this an intended behavior?
> 
> Hmm.  It kind of was, you should be able to unload ipmi_si or ipmi_ssif,
> but not ipmi_msghandler or ipmi_devintf.  If a program is using the
> device, it will just get errors.
> 
> This was all added because of devices that could be dynamically removed
> without warning.  The behavior you are referencing is sort of a side
> effect of that; it would have taken some extra code to keep the module
> from unload, and my assumption was that anyone unloading a module
> indended this.
> 
> If this is causing a problem, it can be modified.
> 
> -corey
> 

Thanks, Corey. I'll check with the vendor.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

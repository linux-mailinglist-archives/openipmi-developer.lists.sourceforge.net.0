Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BA8D161B
	for <lists+openipmi-developer@lfdr.de>; Wed,  9 Oct 2019 19:27:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIFkZ-0003jX-26; Wed, 09 Oct 2019 17:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1iIFkX-0003jM-MN
 for openipmi-developer@lists.sourceforge.net; Wed, 09 Oct 2019 17:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5yDBayUOcwSOCI0U3E4qnzqIo4GPrtJVrQUhOZmSvDg=; b=cfr/hWNXCoyJK2uSeD2Sv58uKR
 ddTT21QNmpqIQvQ4pldzT2TbdGd3/0uLFjcPCEIXASBmt6AgEcC6IdQEKjtcHcGOaiCGSrKYEQZYn
 l+hwKnijbCc/5M9M2kahxnRqmLj/2/n4HLepX/Asvhc5rv3WPqY03Ty54O9m3lE/73Qs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5yDBayUOcwSOCI0U3E4qnzqIo4GPrtJVrQUhOZmSvDg=; b=Q
 H6RGi8T5qxNQp2ie8oq7FUDN4TohDDEOqIltawXAsQP5jEAq2C53WPtFgwD4HKk2yoGh/iwXregPu
 TRanGs9XtbC6bGHjmEGeI83ywg5vSbLx4G9KzSipKwuu0M5FZaL/L+kQ06a8KNMNq7Z85lxVKiuRl
 UQ050DGPXDm8vwT4=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIFkQ-004ATZ-LG
 for openipmi-developer@lists.sourceforge.net; Wed, 09 Oct 2019 17:27:45 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F17A330860CB;
 Wed,  9 Oct 2019 17:27:29 +0000 (UTC)
Received: from [10.3.116.195] (ovpn-116-195.phx2.redhat.com [10.3.116.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 742A75C223;
 Wed,  9 Oct 2019 17:27:29 +0000 (UTC)
To: openipmi-developer@lists.sourceforge.net
From: tony camuso <tcamuso@redhat.com>
Message-ID: <cbf409f1-9055-5786-eae8-8fff422038be@redhat.com>
Date: Wed, 9 Oct 2019 13:27:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 09 Oct 2019 17:27:30 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iIFkQ-004ATZ-LG
Subject: [Openipmi-developer] ipmi kmods can be unloaded even when userspace
 is accessing /dev/ipmi0
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
Cc: cminyard@mvista.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


One of our vendors reports that the following commit ...

commit e86ee2d44b44056243da17c120ad258717cedf9b
Author: Corey Minyard <cminyard@mvista.com>
Date:   Thu Apr 5 22:05:04 2018 -0500

     ipmi: Rework locking and shutdown for hot remove
    
     To handle hot remove of interfaces, a lot of rework had to be
     done to the locking.  Several things were switched over to srcu
     and shutdown for users and interfaces was added for cleaner
     shutdown.
    
     Signed-off-by: Corey Minyard <cminyard@mvista.com>

... appears to have made it possible to unload ipmi kmods when userspace
is accessing /dev/ipmi0

Is this an intended behavior?




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

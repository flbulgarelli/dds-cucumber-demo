class User
end

class OpenListType
  def suscribe(list, user)
    list.add_member(user)
  end
end

class ClosedListType
  def suscribe(list, user)
    list.add_pending(user)
  end
end

class MailList

  def initialize(suscription_type) 
    @members = []
    @pendings = []
    @suscription_type = suscription_type
  end
  
  def add_member(user)
   @members << user
  end
  
  def add_pending(user)
   @pendings << user
  end

  def suscribe(user)
    @suscription_type.suscribe(self, user)
  end
 
  def pending_member?(user) 
    @pendings.member?(user)
  end

  def approved_member?(user)
    @members.member?(user)
  end
end

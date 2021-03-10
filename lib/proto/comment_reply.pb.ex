defmodule Commentapi.UpdateReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replyid: integer
        }

  defstruct [:replyid]

  field :replyid, 1, type: :int32
end

defmodule Commentapi.UpdateReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replyid: integer
        }

  defstruct [:replyid]

  field :replyid, 1, type: :int32
end

defmodule Commentapi.GetReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replyid: integer
        }

  defstruct [:replyid]

  field :replyid, 1, type: :int32
end

defmodule Commentapi.CreateReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          isdeletedbyadmin: boolean,
          userid: integer,
          replyid: integer,
          postid: integer,
          status: integer,
          likecount: integer,
          userlikes: integer,
          commentid: integer
        }

  defstruct [
    :reply,
    :isdeletedbyadmin,
    :userid,
    :replyid,
    :postid,
    :status,
    :likecount,
    :userlikes,
    :commentid
  ]

  field :reply, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :int32
  field :replyid, 4, type: :int32
  field :postid, 5, type: :int32
  field :status, 6, type: :int32
  field :likecount, 7, type: :int32
  field :userlikes, 8, type: :int32
  field :commentid, 9, type: :int32
end

defmodule Commentapi.CreateReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          isdeletedbyadmin: boolean,
          userid: integer,
          replyid: integer,
          postid: integer,
          status: integer,
          likecount: integer,
          userlikes: integer,
          commentid: integer
        }

  defstruct [
    :reply,
    :isdeletedbyadmin,
    :userid,
    :replyid,
    :postid,
    :status,
    :likecount,
    :userlikes,
    :commentid
  ]

  field :reply, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :int32
  field :replyid, 4, type: :int32
  field :postid, 5, type: :int32
  field :status, 6, type: :int32
  field :likecount, 7, type: :int32
  field :userlikes, 8, type: :int32
  field :commentid, 9, type: :int32
end

defmodule Commentapi.UpdateCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: integer
        }

  defstruct [:commentid]

  field :commentid, 1, type: :int32
end

defmodule Commentapi.UpdateCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: integer
        }

  defstruct [:commentid]

  field :commentid, 1, type: :int32
end

defmodule Commentapi.GetCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: integer
        }

  defstruct [:commentid]

  field :commentid, 1, type: :int32
end

defmodule Commentapi.CreateCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comment: String.t(),
          isdeletedbyadmin: boolean,
          userid: integer,
          replyid: integer,
          postid: integer,
          status: integer,
          likecount: integer,
          userlikes: integer,
          commentid: integer
        }

  defstruct [
    :comment,
    :isdeletedbyadmin,
    :userid,
    :replyid,
    :postid,
    :status,
    :likecount,
    :userlikes,
    :commentid
  ]

  field :comment, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :int32
  field :replyid, 4, type: :int32
  field :postid, 5, type: :int32
  field :status, 6, type: :int32
  field :likecount, 7, type: :int32
  field :userlikes, 8, type: :int32
  field :commentid, 9, type: :int32
end

defmodule Commentapi.CreateCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comment: String.t(),
          isdeletedbyadmin: boolean,
          userid: integer,
          replyid: integer,
          postid: integer,
          status: integer,
          likecount: integer,
          userlikes: integer,
          commentid: integer
        }

  defstruct [
    :comment,
    :isdeletedbyadmin,
    :userid,
    :replyid,
    :postid,
    :status,
    :likecount,
    :userlikes,
    :commentid
  ]

  field :comment, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :int32
  field :replyid, 4, type: :int32
  field :postid, 5, type: :int32
  field :status, 6, type: :int32
  field :likecount, 7, type: :int32
  field :userlikes, 8, type: :int32
  field :commentid, 9, type: :int32
end

defmodule Commentapi.Comment.Service do
  @moduledoc false
  use GRPC.Service, name: "commentapi.Comment"

  rpc :CreateComment, Commentapi.CreateCommentRequest, Commentapi.CreateCommentResponse

  rpc :GetComment, Commentapi.GetCommentRequest, Commentapi.CreateCommentResponse

  rpc :DeleteComment, Commentapi.DeleteCommentRequest, Commentapi.DeleteCommentResponse

  rpc :UpdateComment, Commentapi.UpdateCommentRequest, Commentapi.UpdateCommentResponse

  rpc :CreateReply, Commentapi.CreateReplyRequest, Commentapi.CreateReplyResponse

  rpc :GetReply, Commentapi.GetReplyRequest, Commentapi.CreateReplyResponse

  rpc :DeleteReply, Commentapi.DeleteReplyRequest, Commentapi.DeleteReplyResponse

  rpc :UpdateReply, Commentapi.UpdateReplyRequest, Commentapi.UpdateReplyResponse
end

defmodule Commentapi.Comment.Stub do
  @moduledoc false
  use GRPC.Stub, service: Commentapi.Comment.Service
end
